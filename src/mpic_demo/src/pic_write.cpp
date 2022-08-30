#include <ros/ros.h>
#include <stdlib.h>
#include <image_transport/image_transport.h>
#include <opencv2/highgui.hpp>
#include <cv_bridge/cv_bridge.h>
#include <string>
static int i = 0;
void mpic_callback(const sensor_msgs::ImageConstPtr &img_msg)
{
     ros::Time time = img_msg->header.stamp;
     std::string str;
     str = "/home/zxp/Pictures/cpjpg/" + std::to_string(i) + ".jpg";
     cv_bridge::CvImageConstPtr ptr;
     ptr = cv_bridge::toCvCopy(img_msg, "bgr8");
     printf("%s\n", str.c_str());
     cv::imwrite(str, ptr->image);
     i++;
}
int main(int argc, char **argv)
{
  ros::init(argc, argv, "mpic_save");
  ros::NodeHandle n;
  ros::Subscriber sub_image = n.subscribe("mpic/camera/image", 1, mpic_callback);   
  ros::spin();
  return 0;
}