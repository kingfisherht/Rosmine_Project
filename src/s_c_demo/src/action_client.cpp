
#include <ros/ros.h>
#include <actionlib/client/simple_action_client.h>
#include "s_c_demo/testAction.h"    /* 这个头文件每个人写的的名字都可能不同，package name/header file name.h */

typedef actionlib::SimpleActionClient<s_c_demo::testAction> Client;


void doneCd(const actionlib::SimpleClientGoalState& state, const s_c_demo::testResultConstPtr& result)
{
    ROS_INFO("DONE");
    ros::shutdown();
}

/*
 *action启动时的回调函数，一次性
 */
void activeCd()
{
    ROS_INFO("ACTIVE begin");
}

/*
 *action收到反馈时的回调函数
 */
void feedbackCb(const s_c_demo::testFeedbackConstPtr& feedback)
{
    ROS_INFO("THE NUMBER RIGHT NOM IS: %f", feedback -> complete_percent);
}

int main(int argc, char **argv)
{
    ros::init(argc, argv, "action_client_demo");

    /* 定义一个客户端 */
    Client client("action_demo", true); 
    /* 这里的第一次参数要特别注意，我这里起名为action_demo，这个名称关系到server和client之间的配对通讯，两边代码对于这个名称必须要一致，否则两个节点无法相互通讯。 */

    /* 等待服务端响应 */
    ROS_INFO("WAITING FOR ACTION SERVER TO START !");
    client.waitForServer();
    ROS_INFO("ACTION SERVER START !");

    /* 创建一个目标对象 */
    s_c_demo::testGoal test_goal;
    test_goal.goal_num = 55;   /* 设置目标对象的值 */

    /* 发送目标，并且定义回调函数 */
    client.sendGoal(test_goal, &doneCd, &activeCd, &feedbackCb);

    ros::spin();
    return 0;
}
