#include <ros/ros.h>
#include <actionlib/server/simple_action_server.h>
#include "s_c_demo/testAction.h"


typedef actionlib::SimpleActionServer<s_c_demo::testAction> Server;


void doSomething(const s_c_demo::testGoalConstPtr& test_goal, Server* as){
	ros::Rate r(1); /* 设置运行频率，这里设置为1hz */
    s_c_demo::testFeedback feedback;    /* 创建一个feedback对象 */

    ROS_INFO("THE GOAL IS: %d", test_goal->goal_num);

    int count = 0;
    for (; count < test_goal->goal_num; ++count){
		feedback.complete_percent = count;
        as -> publishFeedback(feedback);

        r.sleep();
    }
    ROS_INFO("COUNT DONE");
    as->setSucceeded();   /* 发送result */
	}




int main(int argc, char **argv){
	ros::init(argc, argv, "action_server_demo");
	ros::NodeHandle nh;
	
	Server server(nh, "action_demo", boost::bind(&doSomething, _1, &server), false);
	server.start();
	ros::spin();
	return 0;	
	}
