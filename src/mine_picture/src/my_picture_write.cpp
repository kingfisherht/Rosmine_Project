#include <ros/ros.h>
#include <stdlib.h>
#include <image_transport/image_transport.h>
#include <opencv2/highgui.hpp>
#include <cv_bridge/cv_bridge.h>
#include <string>
static int Picture_index = 0;
void mpic_callback(const sensor_msgs::ImageConstPtr &img_msg)
{
     std::string str;
     str = "/home/zxp/Pictures/cpjpg/" + std::to_string(Picture_index) + ".jpg";
     cv_bridge::CvImageConstPtr ptr;
     ptr = cv_bridge::toCvCopy(img_msg, "bgr8");
     cv::imwrite(str, ptr->image);
     Picture_index++;
     if(Picture_index>50)Picture_index=0;
}
int main(int argc, char **argv)
{
  ros::init(argc, argv, "mpic_save");
  ros::NodeHandle nh;
  ros::Subscriber sub_image = nh.subscribe("mpic/camera/image", 1, mpic_callback);   
  ros::spin();
  return 0;
}