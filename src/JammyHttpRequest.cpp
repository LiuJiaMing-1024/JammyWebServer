#include <JammyHttpRequest.h>
#include <server_tool.h>
#include <iostream>
JammyHttpRequest::JammyHttpRequest(int clientfd) : clientfd(clientfd)
{

    char buff[1024];
    int recv_len = 0;
    int idx = 0;

    // 开始处理请求，首先是解析请求方法及协议
    recv_len = getline(clientfd, buff, sizeof(buff));
    int i = 0;
    skip_sp(buff, sizeof(buff), idx);
    while (idx < sizeof(buff) && buff[idx] != ' ' && buff[idx] != '\n')
    {
        method[i++] = buff[idx++];
    }
    method[i] = '\0';
    printf("请求的方法为%s\n", method);

    // 读取请求的资源路经
    skip_sp(buff, sizeof(buff), idx);
    char url[128];
    i = 0;
    while (idx < sizeof(buff) && buff[idx] != ' ' && buff[idx] != '\n')
    {
        url[i++] = buff[idx++];
    }
    url[i] = '\0';
    printf("请求的路经为%s\n", url);
    strcpy(path, RESOURCE);
    strcat(path, url);

    // 读取请求协议
    skip_sp(buff, sizeof(buff), idx);
    i = 0;
    while (idx < sizeof(buff) && buff[idx] != ' ' && buff[idx] != '\n')
    {
        protocol[i++] = buff[idx++];
    }
    protocol[i] = '\0';
    printf("请求的协议为%s\n", protocol);

    // 下面开始解析请求体
    memset(buff, 0, sizeof(buff));
    while (strcmp(buff, "\r\n") && strcmp(buff, "\n"))
    {
        recv_len = getline(clientfd, buff, sizeof(buff));
        char *sep = strchr(buff, ':');
        if (sep != NULL)
            body[std::string(buff, sep)] = std::string(sep + 1, buff + strlen(buff));
    }
    for (auto it = body.begin(); it != body.end(); it++)
    {
        std::cout << it->first << ":" << it->second << std::endl;
    }

    // 下面开始分析请求的资源路径是否合法

    // 判断该路径是文件还是文件夹，如果是文件，则判断文件是否存在，存在则发送，不存在直接404
    // 如果是文件夹，则默认在结尾添加index.html
    struct stat st;
    stat(path, &st);
    if (S_ISDIR(st.st_mode))
    {
        if (path[strlen(path) - 1] != '/')
            strcat(path, "/");
        strcat(path, "index.html");
    }
    else if (S_ISREG(st.st_mode))
    {
        // 判断是二进制文件还是文本文件,先获取文件类型,默认视为文本文件
        char *start = strrchr(path, '.');
        if (start != NULL)
        {
            int num = strlen(path) - (start - path);
            strncpy(type, start + 1, num);
        }
        else
        {
            strcpy(type, "html");
        }

        if (!strcmp(type, "jpg") || !strcmp(type, "png") || !strcmp(type, "ico"))
        {
            is_bin = 1;
        }
        if (strcmp(type, "jpg") == 0)
            strcpy(type, "image/jpg");
        else if (strcmp(type, "css") == 0)
            strcpy(type, "text/css");
        else if (strcmp(type, "png") == 0)
            strcpy(type, "text/png");
        else if (strcmp(type, "js") == 0)
            strcpy(type, "application/x-javascript");
        else if (strcmp(type, "html") == 0)
            strcpy(type, "text/html");
        else if (strcmp(type, "ico") == 0)
            strcpy(type, "text/png");
    }
    else
    {
        printf("资源找不到%s\n", path);
        resp_code = 404;
    }
}