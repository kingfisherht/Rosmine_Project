#include "ros/ros.h"
#include <actionlib/server/simple_action_server.h>
#include "calaction_demo/calculationAction.h"
#include "calaction_demo/calculationActionGoal.h"

typedef actionlib::SimpleActionServer<calaction_demo::calculationAction> Server;

void doSomething(const calaction_demo::calculationGoalConstPtr& demo_goal,Server *as){
      ros::Rate r(1); /* 设置运行频率，这里设置为1hz */
    calaction_demo::calculationFeedback feedback;    /* 创建一个feedback对象 */

    ROS_INFO("THE GOAL IS: %d", demo_goal -> goal_num);

    int count = 0;
        for (; count < demo_goal->goal_num; ++count)
        {
            feedback.complete_percent = count;
            as -> publishFeedback(feedback);

            r.sleep();
        }

    ROS_INFO("COUNT DONE");

    as -> setSucceeded();   /* 发送result */

}

int main(int argc, char *argv[])
{
    ros::init(argc,argv,"xp_cal_demo");
    ros::NodeHandle nh;
    //Server server(nh,"action_demo",boost::bind(&execute,_1,&server),false);
    Server server(nh,"action_demo",boost::bind(&doSomething,_1,&server),false);
    server.start();
    ros::spin();
    return 0;
}
