#ifndef MY_PICTURE_READ_H
#define MY_PICTURE_READ_H
#include "ros/ros.h"
namespace my_picture
{
    class MyPictureReadData;
    class MyPictureRead final
    {
    private:
        std::unique_ptr<MyPictureReadData> pimpl_;
        friend class MyPictureReadData; /* data */
    public:
        explicit MyPictureRead(/* args */);
        ~MyPictureRead();
    };
} // namespace mypicture
#endif