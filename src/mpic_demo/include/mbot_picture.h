#ifndef MBOT_PICTURE_H
#define MBOT_PICTURE_H
#include "ros/ros.h"
namespace mbot {
class mpic_data;
class mbot_picture final
{
private:
    std::unique_ptr<mpic_data> pimpl_;
    friend class mpic_data;
public:
    explicit mbot_picture();
    ~mbot_picture();
};

}
#endif
