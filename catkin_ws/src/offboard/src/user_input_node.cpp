#include <thread>
#include <iostream>
#include <algorithm>
#include <fstream>
#include <termios.h>
#include <chrono>

#include <ros/ros.h>
#include <std_msgs/String.h>



int main(int argc, char **argv)
{
    ros::init(argc, argv, "UserInput");

	struct termios original_terminal_settings;
	struct termios new_terminal_settings;
	
	tcgetattr(0, &original_terminal_settings); // save old terminal i/o settings
	new_terminal_settings = original_terminal_settings; // make new settings same as old settings
	new_terminal_settings.c_lflag &= ~ICANON; // disable buffered i/o
	//new_terminal_settings.c_lflag &= ~ECHO; // set echo mode
	new_terminal_settings.c_cc[VMIN] = 1; //minimum of number input read.
	tcsetattr(0, TCSANOW, &new_terminal_settings); // use these new terminal i/o settings now


	ros::NodeHandle nh;
	ros::Publisher input_pub = nh.advertise<std_msgs::String>("offboard/user_input_node", 10);

	int c = 0;
	std_msgs::String msg;
	std::string input="";
	
	ros::Rate loop_rate(100);
	while (ros::ok())
	{
		std::cout << "  t -> takeoff" << std::endl;
		std::cout << "  l -> land" << std::endl;
		std::cout << "  h -> hold" << std::endl;
		std::cout << "  a -> auto flying" << std::endl;
		std::cout << "wait input:     ";

		c = getchar();	// TODO: this is blocking, so the interruption point is not reached...
		if ((char)c == ' ')
			std::cout<<std::endl<<"user inpt: SPACE"<<std::endl;
		else
			std::cout<<std::endl<<"user inpt: "<<(char)c <<std::endl;

		std::cout << std::endl;
		std::cout << std::endl;
		std::cout << std::endl;
		
		if(c=='t' || c=='l' || c=='h' || c=='a')
		{
			input = (char) c;
			msg.data = input;
			input_pub.publish(msg);
		}
		c = 0;

		ros::spinOnce();
		loop_rate.sleep();
	}

	tcsetattr(0, TCSANOW, &original_terminal_settings);
}


