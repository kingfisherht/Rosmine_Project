#include <ros/ros.h>
#include <stdlib.h>
#include <image_transport/image_transport.h>
#include <opencv2/highgui.hpp>
#include <cv_bridge/cv_bridge.h>
#include <string>

void mPictureCallback(const sensor_msgs::ImageConstPtr &img_msg)
{
  static int g_picture_index = 0;
  std::string str = "/home/zxp/Pictures/cpjpg/" + std::to_string(g_picture_index) + ".jpg";
  cv_bridge::CvImageConstPtr ptr = cv_bridge::toCvCopy(img_msg, "bgr8");
  cv::imwrite(str, ptr->image);
  g_picture_index++;
  if (g_picture_index > 51)
  {
    g_picture_index = 0;
  }
}
int main(int argc, char **argv)
{
  ros::init(argc, argv, "mpic_save");
  ros::NodeHandle nh;
  ros::Subscriber sub_image = nh.subscribe("mpic/camera/image", 1, mPictureCallback);
  ros::spin();
  return 0;
}