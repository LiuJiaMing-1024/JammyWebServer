#include <server_tool.h>
#include <JammyHttpRequest.h>
int getline(int clientfd, char *buff, int buff_size)
{
    int idx = 0;
    char ch = 100;
    int ret = 0;
    while (ch != '\n' && idx < buff_size)
    {
        ret = recv(clientfd, &ch, 1, 0);
        // printf("%c", ch);
        if (ret > 0)
        {
            // 读取到回车字符的特殊处理
            if (ch == '\r')
            {
                ret = recv(clientfd, &ch, 1, MSG_PEEK);
                if (ch == '\n')
                {
                    ret = recv(clientfd, &ch, 1, 0);
                }
                else
                {
                    ch = '\n';
                }
            }
            buff[idx++] = ch;
        }
        else
        {
            break;
        }
    }
    buff[idx] = '\0';
    return idx;
}

void send_header(int clientfd, int code, char *type)
{
    // 发送响应头
    char buff[1024];
    sprintf(buff, "HTTP/1.0 %d OK\r\n", code);
    send(clientfd, buff, strlen(buff), 0);

    // 发送响应体
    strcpy(buff, "Server: RockHttpd/0.1\r\n");
    send(clientfd, buff, strlen(buff), 0);

    sprintf(buff, "Content-type:%s\n", type);
    send(clientfd, buff, strlen(buff), 0);
    // 最后记得要相应空行再发送文件
    strcpy(buff, "\r\n");
    send(clientfd, buff, strlen(buff), 0);
}

void skip_sp(char *buff, int buff_size, int &idx)
{
    while ((buff[idx] == ' ' || buff[idx] == '\t' || buff[idx] == '\n') && idx < buff_size)
    {
        idx++;
    }
}

void *_handler(void *arg)
{
    int clientfd = (int)(long)arg;
    JammyHttpRequest request(clientfd);
    // 解析请求
    if (request.resp_code == 200)
    {
        send_header(clientfd, request.resp_code, request.type);
        send_file(clientfd, request.path, request.is_bin);
    }
    else
    {
        not_found(clientfd);
    }

    return NULL;
}

void send_file(int clientfd, char *path, int is_bin)
{
    char buff[1024];
    int recv_len = 0;
    memset(buff, 0, sizeof(buff));
    if (is_bin)
        printf("以二进制形式读取文件%s\n", path);

    FILE *file;
    if (is_bin)
        file = fopen(path, "rb");
    else
        file = fopen(path, "r");
    int ret = 1;
    while (1)
    {
        ret = fread(buff, sizeof(char), sizeof(buff), file);
        if (ret <= 0)
            break;
        send(clientfd, buff, ret, 0);
    }
    printf("发送%s文件完毕！\n", path);
    close(clientfd);
}

void not_found(int clientfd)
{
    char buff[1024];
    // 发送状态行
    strcpy(buff, "HTTP/1.0 404 NOT FOUND\r\n");
    send(clientfd, buff, strlen(buff), 0);
    // 发送消息头

    strcpy(buff, "Server: RockHttpd/0.1\r\n");
    send(clientfd, buff, strlen(buff), 0);

    strcpy(buff, "Content-type:text/html\r\n");
    send(clientfd, buff, strlen(buff), 0);

    strcpy(buff, "\r\n");
    send(clientfd, buff, strlen(buff), 0);

    int recv_len = 0;

    // 开始发送404的html
    sprintf(buff,
            "<html> \
			<body> \
				<h2> The resource is unavailable </h2>\
				<img src=\"\\404.png\"> </img>	\
			</body>\
		</html>\
		");
    send(clientfd, buff, strlen(buff), 0);
    close(clientfd);
}