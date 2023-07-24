#ifndef _JammyHttpRequest
#define _JammyHttpRequest

#include <map>
#include <string>

// 用于获取http请求的类
class JammyHttpRequest
{

private:
    int clientfd;

public:
    int resp_code = 200;
    int is_bin = 0;
    char type[128];
    char method[16];
    char path[256];
    char protocol[16];
    std::map<std::string, std::string> body;
    JammyHttpRequest(int clientfd);
};

#endif