#include "my_picture_read.h"
#include "ros/ros.h"
#include "mine_picture/picture.h"
#include <image_transport/image_transport.h>
#include <opencv2/highgui/highgui.hpp>
#include <cv_bridge/cv_bridge.h>
#include <glob.h>
#include <vector>
#include <iostream>
namespace mypicture
{
    class MyPictureReadData
    {
    private:
        friend class MyPictureRead;
        int j = 0;
        bool begin_;
        std::string pos_;
        ros::NodeHandle handle_;
        ros::ServiceServer mbot_service_;
        std::vector<std::string> img_path;
        std::vector<cv::String> fn;

    public:
        void initialize();
        void publish_function();
        bool handle_function(mine_picture::picture::Request &req, mine_picture::picture::Response &res); /* data */
    };
    void MyPictureReadData::publish_function()
    {
        image_transport::ImageTransport it(handle_);
        image_transport::Publisher pub = it.advertise("mpic/camera/image", 1);
        glob(pos_, fn, false);
        size_t count = fn.size();
        for (size_t i = 0; i < count; i++)
        {
            img_path.push_back(fn[i]);
        }
        ros::Rate loop_rate(5);
        while (handle_.ok())
        {
            if (begin_ == true)
            {
                ros::Rate loop_rate(5);
                if (j <= img_path.size())
                {
                    cv::Mat image = cv::imread(img_path[j], CV_LOAD_IMAGE_COLOR);
                    if (image.data == NULL)
                        break;
                    sensor_msgs::ImagePtr msg = cv_bridge::CvImage(std_msgs::Header(), "bgr8", image).toImageMsg();
                    pub.publish(msg);
                    j++;
                }
                loop_rate.sleep();
            }
        }
    }
    bool MyPictureReadData::handle_function(mine_picture::picture::Request &req, mine_picture::picture::Response &res)
    {
        if (req.start == true)
            begin_ = true;
        res.feedback = "Sucesses start" + std::to_string(req.start);
        publish_function();
        return true;
    }

    void MyPictureReadData::initialize()
    {
        handle_.getParam("position", pos_);
        mbot_service_ = handle_.advertiseService("/mpicture/read", &MyPictureReadData::handle_function, this);
    }

}

namespace mypicture
{
    MyPictureRead::MyPictureRead() : pimpl_(std::make_unique<MyPictureReadData>())
    {
        pimpl_->initialize();
    }

    MyPictureRead::~MyPictureRead() = default;

} // namespace my_picture
