#ifndef _SERVER_TOOL
#define _SERVER_TOOL

#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <stdlib.h>
#include <netdb.h>
#include <arpa/inet.h>
#include <pthread.h>
#include <sys/stat.h>
#include <sys/types.h>
#include <sys/socket.h>
// 使用cmake配置好的资源路径
#include <config.h>

void send_header(int clientfd, int code, char *type);
void send_file(int clientfd, char *path, int is_bin);
// 从socket读取一行数据
int getline(int clientfd, char *buff, int buff_size);
void skip_sp(char *buff, int buff_size, int &idx);
void *_handler(void *arg);
void not_found(int clientfd);

#endif