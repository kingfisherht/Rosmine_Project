#include <ros/ros.h>
#include "my_picture_read.h"
#include <cstdlib>
#include <execinfo.h>
#include <csignal>
#include <fstream>
void executeCMD(const char *cmd)
{
    std::string map_pgm_file = "core.log";
    std::ofstream out(map_pgm_file, std::ios::out);
    char buf_ps[1024];
    char ps[1024] = {0};
    FILE *ptr;
    strcpy(ps, cmd);
    if ((ptr = popen(ps, "r")) != NULL)
    {
        while (fgets(buf_ps, 1024, ptr) != NULL)
        {
            out.write(buf_ps, strlen(buf_ps));
        }
        pclose(ptr);
        out.close();
        ptr = NULL;
    }
}
static void sig_handler(int sig)
{
    char buff[64] = {0x00};
    sprintf(buff, "gdb -ex \"thread apply all bt\" -batch -p %d", getpid());
    executeCMD((const char *)buff);
}
int main(int argc, char *argv[])
{
    signal(SIGSEGV, sig_handler);
    signal(SIGABRT, sig_handler);
    ros::init(argc, argv, "mbot_picture");
    my_picture::MyPictureRead mine_picture;
    ros::spin();
    return 0;
}
