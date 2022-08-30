#include <ros/ros.h>
#include "mpic_demo/mpicture.h"
#include <image_transport/image_transport.h>
#include <opencv2/highgui/highgui.hpp>
#include <cv_bridge/cv_bridge.h>
#include <glob.h>
#include <vector>
 // 定义请求处理函数
bool handle_function(mpic_demo::mpicture::Request &req,
					mpic_demo::mpicture::Response &res)
{
	// 此处我们对请求直接输出
	ROS_INFO("Request from %d with age %d ", req.start, req.stop);
	if(req.start == 1) {
      // ros::pub=();
  }
	// 返回一个反馈，将response设置为"..."
	res.feedback = "Hi " + std::to_string(req.start) + ". I'm server!";
	return true;
}

int main(int argc, char **argv)
{
  ros::init(argc, argv, "img_pub");
  ros::NodeHandle nh;
  ros::ServiceServer service = nh.advertiseService("/mpicture/read", handle_function);
  image_transport::ImageTransport it(nh);
  image_transport::Publisher pub = it.advertise("mpic/camera/image",1);
  std::string pos;
  int j=0;
  nh.getParam("position",pos);
  std::vector<std::string> img_path;
  std::vector<cv::String> fn;
  glob(pos,fn,false);
  // nh.getParam("position",pos);
  // ROS_INFO("position was %s", pos.c_str());
   size_t count = fn.size();
  for(size_t i = 0; i < count; i++){
      img_path.push_back(fn[i]);
  }
  // for(int i=0; i < img_path.size(); i++){
  //     cv::Mat image = cv::imread(img_path[i],CV_LOAD_IMAGE_COLOR);
  //     if(image.data == NULL) break;
  //     msg = cv_bridge::CvImage(std_msgs::Header(),"bgr8",image).toImageMsg();
  //     pub.publish(msg);
  // }
  ros::Rate loop_rate(5);
  while(nh.ok())
  {
    if(j <= img_path.size()) {
      cv::Mat image = cv::imread(img_path[j],CV_LOAD_IMAGE_COLOR);
      if(image.data == NULL) break;
      sensor_msgs::ImagePtr msg = cv_bridge::CvImage(std_msgs::Header(),"bgr8",image).toImageMsg();
      pub.publish(msg);
      j++;
    }
    ros::spinOnce();
    loop_rate.sleep();
  }
  ROS_INFO("Hello world!");
}