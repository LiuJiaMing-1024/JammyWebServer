#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <stdlib.h>
#include <netdb.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <arpa/inet.h>

int main(void)
{

    // 1.创建与服务端进行通信的socket
    int client_fd;
    client_fd = socket(AF_INET, SOCK_STREAM, 0);

    // 2.填写服务器地址信息
    struct sockaddr_in servaddr;
    memset(&servaddr, 0, sizeof(servaddr));
    servaddr.sin_addr.s_addr = inet_addr("127.0.0.1");
    servaddr.sin_port = htons(8888);
    servaddr.sin_family = AF_INET;

    // 3.将socket与服务器进行连接
    if (connect(client_fd, (sockaddr *)&servaddr, sizeof(servaddr)) == -1)
    {
        perror("与服务器建立链接失败");
        exit(-1);
    }

    char buff[1024];
    int send_len, recv_len;
    for (int i = 1; i <= 100; i++)
    {
        sprintf(buff, "你好，番猫%d号", i);
        send_len = send(client_fd, buff, sizeof(buff), 0);
        printf("发送%ld个字符：%s\n", strlen(buff), buff);
        memset(buff, 0, sizeof(buff));
        recv_len = recv(client_fd, buff, sizeof(buff), 0);
        printf("收到%ld个字符：%s\n", strlen(buff), buff);
    }
    close(client_fd);
}