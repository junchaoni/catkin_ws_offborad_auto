/**
 * @file offb_node.cpp
 * @brief offboard example node, written with mavros version 0.14.2, px4 flight
 * stack and tested in Gazebo SITL
 */
#include <ros/ros.h>
#include <geometry_msgs/PoseStamped.h>
#include <mavros_msgs/CommandBool.h>
#include <mavros_msgs/SetMode.h>
#include <mavros_msgs/State.h>
#include <mavros_msgs/CommandTOL.h>
#include <mavros_msgs/ExtendedState.h>
#include <std_msgs/String.h>
#include <stdint.h>
#include <string.h>

using namespace std;  //C++重要的命令空间

#define STATUS_INIT          0
#define STATUS_TAKEOFF       1
#define STATUS_LAND          2
#define STATUS_HOLD          3
#define STATUS_AUTO          4

string user_input;
//std_msgs::String user_input;
int land_state;

mavros_msgs::State current_state;
void state_cb(const mavros_msgs::State::ConstPtr& msg)
{
    current_state = *msg;
}


void LocalPose(const geometry_msgs::PoseStamped::ConstPtr& msg)
{
    double quat_data[4], euler[3];
	quat_data[0] = msg->pose.orientation.w;
	quat_data[1] = msg->pose.orientation.x;
	quat_data[2] = msg->pose.orientation.y;
	quat_data[3] = msg->pose.orientation.z;
	euler[0]=std::atan2(2.0 * (quat_data[0] * quat_data[1] + quat_data[2] * quat_data[3]), 
				    1.0 - 2.0 * (quat_data[1] * quat_data[1] + quat_data[2] * quat_data[2]));
	euler[1]=std::asin(2.0 * (quat_data[0] * quat_data[2] - quat_data[3] * quat_data[1]));
	euler[2]=std::atan2(2.0 * (quat_data[0] * quat_data[3] + quat_data[1] * quat_data[2]), 
					1.0 - 2.0 * (quat_data[2] * quat_data[2] + quat_data[3] * quat_data[3]));
	//ROS_INFO("Plane Quat");
	//ROS_INFO("quat=(%0.2f, %0.2f, %0.2f, %0.2f)", quat_data[0],quat_data[1],quat_data[2],quat_data[3]);
	//ROS_INFO("euler=(%0.2f, %0.2f, %0.2f)", euler[0],euler[1],euler[2]);
}

void SubscribeUserInput(const std_msgs::String::ConstPtr& msg)
{		
	user_input = msg->data;
	//ROS_INFO("user_input is:");
}

void SubscribeLanedDt(const mavros_msgs::ExtendedState::ConstPtr& msg)
{
	//2：起飞  1：着陆
	land_state = msg->landed_state;
	//ROS_INFO("test laned : %d",msg->landed_state);   
}
int main(int argc, char **argv)
{
    int status;
    ros::init(argc, argv, "offb_node");
    ros::NodeHandle nh;

    ros::Subscriber state_sub = nh.subscribe<mavros_msgs::State>     //获得飞行器的状态
            ("mavros/state", 10, &state_cb);

    ros::Subscriber LocalPoseSub = nh.subscribe<geometry_msgs::PoseStamped>
            ("/mavros/local_position/pose", 10, &LocalPose);

    ros::Subscriber UserInputSub = nh.subscribe<std_msgs::String>
            ("offboard/user_input_node", 10, &SubscribeUserInput);

    ros::Subscriber LandedDtSub = nh.subscribe<mavros_msgs::ExtendedState>    //着陆检测信号订阅
			("mavros/extended_state",10, &SubscribeLanedDt);  
    
    ros::Publisher local_pos_pub = nh.advertise<geometry_msgs::PoseStamped>
            ("mavros/setpoint_position/local", 10);


    ros::ServiceClient arming_client = nh.serviceClient<mavros_msgs::CommandBool>
            ("mavros/cmd/arming");
            
    ros::ServiceClient set_mode_client = nh.serviceClient<mavros_msgs::SetMode>
            ("mavros/set_mode");
            
    ros::ServiceClient set_mode_land_client = nh.serviceClient<mavros_msgs::CommandTOL>    //降落的客户端
            ("mavros/cmd/land");
    
    //the setpoint publishing rate MUST be faster than 2Hz
    ros::Rate rate(20.0);

    // wait for FCU connection
    while(ros::ok() && current_state.connected)
    {
        ros::spinOnce();
        rate.sleep();
    }

    geometry_msgs::PoseStamped pose;
    pose.pose.position.x = 0;
    pose.pose.position.y = 0;
    pose.pose.position.z = 2;

    //send a few setpoints before starting
    for(int i = 100; ros::ok() && i > 0; --i)
    {
        local_pos_pub.publish(pose);
        ros::spinOnce();
        rate.sleep();
    }

    mavros_msgs::SetMode offb_set_mode;
    offb_set_mode.request.custom_mode = "OFFBOARD";

    mavros_msgs::CommandBool arm_cmd;
    arm_cmd.request.value = true;
    
    mavros_msgs::CommandBool lock_cmd;
    lock_cmd.request.value = false;   
    
    

    ros::Time last_request = ros::Time::now();

    while(ros::ok())
    {  
        char input = user_input.c_str()[0];
		user_input = "";
		switch(input)
		{
			case 't':
				ROS_INFO("AutoFlying User Input: TAKEOFF");
				status = STATUS_TAKEOFF;
				break;
			case 'l':
				ROS_INFO("AutoFlying User Input: LAND");
				status = STATUS_LAND;
				break;
			case 'h':
				ROS_INFO("AutoFlying User Input: HOLD");
				status = STATUS_HOLD;
				break;					
			case 'a':
				ROS_INFO("AutoFlying User Input: AUTO");
				status = STATUS_AUTO;
				break;
		}

		switch(status)
		{
	
			case STATUS_TAKEOFF:
			
				if( current_state.mode != "OFFBOARD" &&
		        (ros::Time::now() - last_request > ros::Duration(5.0)))
		        {
				    if( set_mode_client.call(offb_set_mode) &&
				        offb_set_mode.response.success)
				    {
				        ROS_INFO("Offboard enabled");
				    }
				    last_request = ros::Time::now();
		        } 
				else
				{
				    if( !current_state.armed &&
				        (ros::Time::now() - last_request > ros::Duration(5.0)))
			        {
			        if( arming_client.call(arm_cmd) &&
			            arm_cmd.response.success){
			            ROS_INFO("Vehicle armed");
			            status = 0;
			        }
			        last_request = ros::Time::now();
				    }
				}
				break;				
			case STATUS_LAND:			
				mavros_msgs::CommandTOL::Request  req;
				mavros_msgs::CommandTOL::Response res;
				req.min_pitch = NAN;
				req.yaw       = NAN;
				req.latitude  = NAN;
				req.longitude = NAN;
				req.altitude  = NAN;				
				bool ret = set_mode_land_client.call(req,res);
				
				if(ret == true)
				{		
					ret = false;			
					ROS_INFO("Land call success: %d",res.result);				
				}
				else
				{
					ROS_ERROR("Land call failed");
				}
				
				if(land_state == 1)
				{
					ROS_INFO("The plane should be locked");									
					if(arming_client.call(lock_cmd)&&(lock_cmd.response.success))
					{
						ROS_INFO("Vehicle locked");
						land_state = 0;
						status = 0;
					}					
				}							
				break;
		}
       
        local_pos_pub.publish(pose);   

        ros::spinOnce();
        rate.sleep();
    }

    return 0;
}


