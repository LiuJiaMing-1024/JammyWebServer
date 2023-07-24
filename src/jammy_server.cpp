

#include <server_tool.h>

int main(void)
{
    // 1.创建服务端用于监听的socket
    int listenfd;
    if ((listenfd = socket(AF_INET, SOCK_STREAM, 0)) == -1)
    {
        perror("监听端口创建失败！");
        close(listenfd);
        exit(-1);
    }

    int opt = 1;
    int ret = setsockopt(listenfd, SOL_SOCKET, SO_REUSEADDR, (const char *)&opt, sizeof(opt));
    if (ret == -1)
    {
        printf("setsockopt");
        close(listenfd);
        exit(-1);
    }

    // 2.创建服务端地址
    struct sockaddr_in serv_addr;
    memset(&serv_addr, 0, sizeof(serv_addr));
    serv_addr.sin_family = AF_INET;
    serv_addr.sin_port = htons(8888);
    serv_addr.sin_addr.s_addr = htonl(INADDR_ANY);
    // 3.绑定地址与socket
    if (bind(listenfd, (sockaddr *)&serv_addr, sizeof(serv_addr)))
    {
        perror("端口绑定失败!");
        close(listenfd);
        exit(-1);
    }
    // 4.设置socket为监听模式，第二个参数的要求如下
    // The backlog argument defines the maximum length to which the
    // queue of pending connections for sockfd may grow.
    // 此外，listen对socket的传输数据类型要求如下
    // The sockfd argument is a file descriptor that refers to a socket
    // of type SOCK_STREAM or SOCK_SEQPACKET.

    if (listen(listenfd, 5) == -1)
    {
        perror("监听失败！");
        close(listenfd);
        exit(-1);
    }

    int clientfd;
    struct sockaddr_in client_addr;
    socklen_t addr_len = 0;
    memset(&client_addr, 0, sizeof(sockaddr_in));

    // 开始接受客户端请求
    while (true)
    {
        if ((clientfd = accept(listenfd, (sockaddr *)&client_addr, &addr_len)) == -1)
        {
            perror("请求接受失败！");
            exit(-1);
        }
        printf("接受到来自客户端%s的连接\n", inet_ntoa(client_addr.sin_addr));

        // 多线程处理请求
        pthread_t thread_id;
        pthread_create(&thread_id, NULL, _handler, (void *)(long)clientfd);
    }

    close(listenfd);
}
