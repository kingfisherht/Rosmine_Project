#include "my_picture_read.h"
#include "ros/ros.h"
#include "mine_picture/picture.h"
#include <image_transport/image_transport.h>
#include <opencv2/highgui/highgui.hpp>
#include <cv_bridge/cv_bridge.h>
#include <glob.h>
#include <vector>
#include <iostream>
namespace my_picture
{
    class MyPictureReadData
    {
    public:
        void initialize();
        void publishFunction();
        void timeCallBack(const ros::TimerEvent &event);
        bool handleFunction(mine_picture::picture::Request &req, mine_picture::picture::Response &res); /* data */
    private:
        friend class MyPictureRead;
        int picture_index = 0;
        bool begin_{false};
        std::string pos_;
        ros::Timer timer_;
        ros::NodeHandle handle_;
        ros::ServiceServer mbot_service_;
        image_transport::Publisher image_publisher_;
        std::vector<std::string> img_path_;
        std::vector<cv::String> fn_;
    };
    // void MyPictureReadData::publishFunction()
    // {
    //     glob(pos_, fn_, false);
    //     size_t count = fn_.size();
    //     for (size_t index = 0; index < count; index++)
    //     {
    //         img_path_.push_back(fn_[index]);
    //     }
    //     // img_path_.at();  //itor
    //     ros::Rate loop_rate(5);
    //     while (handle_.ok())
    //     {
    //         if (begin_)
    //         {
    //             if (picture_index < img_path_.size())
    //             {
    //                 //cv::Mat image = cv::imread(img_path_[picture_index], CV_LOAD_IMAGE_COLOR);
    //                 cv::Mat image = cv::imread(img_path_.at(picture_index), CV_LOAD_IMAGE_COLOR);
    //                 if (image.empty())
    //                 {
    //                     img_path_.resize(0);
    //                     fn_.resize(0);
    //                     break;
    //                 }
    //                 sensor_msgs::ImagePtr msg = cv_bridge::CvImage(std_msgs::Header(), "bgr8", image).toImageMsg();
    //                 image_publisher_.publish(msg);
    //                 picture_index++;
    //             }
    //             loop_rate.sleep();
    //         }
    //     }
    // }
    void MyPictureReadData::timeCallBack(const ros::TimerEvent &event)
    {
        ROS_INFO("timeCallBack triggered");
        cv::Mat image = cv::imread(img_path_.at(picture_index), CV_LOAD_IMAGE_COLOR);
        if (image.empty())
        {
            picture_index = 0;
        }
        sensor_msgs::ImagePtr msg = cv_bridge::CvImage(std_msgs::Header(), "bgr8", image).toImageMsg();
        if(begin_){
            image_publisher_.publish(msg);
            picture_index++;
        }
    }

    bool MyPictureReadData::handleFunction(mine_picture::picture::Request &req, mine_picture::picture::Response &res)
    {
        if (req.start == true)
        {
            begin_ = true;
        }
        res.feedback = "Sucesses start" + std::to_string(req.start);
        return true;
    }
    //定时器 多线程
    void MyPictureReadData::initialize()
    {
        handle_.getParam("position", pos_);
        glob(pos_, fn_, false);
        size_t count = fn_.size();
        for (size_t index = 0; index < count; index++)
        {
            img_path_.push_back(fn_[index]);
        }
        image_transport::ImageTransport it(handle_);
        image_publisher_ = it.advertise("mpic/camera/image", 10);
        //ros::Publisher aa = handle_.advertise<sensor_msgs::Image>("mpic/camera/image", 10);
        timer_ = handle_.createTimer(ros::Duration(1), &MyPictureReadData::timeCallBack, this);
        mbot_service_ = handle_.advertiseService("/mpicture/read", &MyPictureReadData::handleFunction, this);
    }
}

namespace my_picture
{
    MyPictureRead::MyPictureRead() : pimpl_(std::make_unique<MyPictureReadData>())
    {
        pimpl_->initialize();
    }

    MyPictureRead::~MyPictureRead() = default;

} // namespace my_picture
