// Generated by gencpp from file mavros_msgs/CommandCode.msg
// DO NOT EDIT!


#ifndef MAVROS_MSGS_MESSAGE_COMMANDCODE_H
#define MAVROS_MSGS_MESSAGE_COMMANDCODE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace mavros_msgs
{
template <class ContainerAllocator>
struct CommandCode_
{
  typedef CommandCode_<ContainerAllocator> Type;

  CommandCode_()
    {
    }
  CommandCode_(const ContainerAllocator& _alloc)
    {
  (void)_alloc;
    }




    enum { CMD_DO_SET_MODE = 176u };
     enum { CMD_DO_JUMP = 177u };
     enum { CMD_DO_CHANGE_SPEED = 178u };
     enum { CMD_DO_SET_HOME = 179u };
     enum { CMD_DO_SET_RELAY = 181u };
     enum { CMD_DO_REPEAT_RELAY = 182u };
     enum { CMD_DO_SET_SERVO = 183u };
     enum { CMD_DO_REPEAT_SERVO = 184u };
     enum { CMD_DO_CONTROL_VIDEO = 200u };
     enum { CMD_DO_SET_ROI = 201u };
     enum { CMD_DO_MOUNT_CONTROL = 205u };
     enum { CMD_DO_SET_CAM_TRIGG_DIST = 206u };
     enum { CMD_DO_FENCE_ENABLE = 207u };
     enum { CMD_DO_PARACHUTE = 208u };
     enum { CMD_DO_INVERTED_FLIGHT = 210u };
     enum { CMD_DO_MOUNT_CONTROL_QUAT = 220u };
     enum { CMD_PREFLIGHT_CALIBRATION = 241u };
     enum { CMD_MISSION_START = 300u };
     enum { CMD_COMPONENT_ARM_DISARM = 400u };
     enum { CMD_START_RX_PAIR = 500u };
     enum { CMD_REQUEST_AUTOPILOT_CAPABILITIES = 520u };
     enum { CMD_DO_TRIGGER_CONTROL = 2003u };
     enum { NAV_WAYPOINT = 16u };
     enum { NAV_LOITER_UNLIM = 17u };
     enum { NAV_LOITER_TURNS = 18u };
     enum { NAV_LOITER_TIME = 19u };
     enum { NAV_RETURN_TO_LAUNCH = 20u };
     enum { NAV_LAND = 21u };
     enum { NAV_TAKEOFF = 22u };
 

  typedef boost::shared_ptr< ::mavros_msgs::CommandCode_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mavros_msgs::CommandCode_<ContainerAllocator> const> ConstPtr;

}; // struct CommandCode_

typedef ::mavros_msgs::CommandCode_<std::allocator<void> > CommandCode;

typedef boost::shared_ptr< ::mavros_msgs::CommandCode > CommandCodePtr;
typedef boost::shared_ptr< ::mavros_msgs::CommandCode const> CommandCodeConstPtr;

// constants requiring out of line definition

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mavros_msgs::CommandCode_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mavros_msgs::CommandCode_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace mavros_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/indigo/share/geometry_msgs/cmake/../msg'], 'mavros_msgs': ['/home/work/catkin_ws/src/mavros/mavros_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::mavros_msgs::CommandCode_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mavros_msgs::CommandCode_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mavros_msgs::CommandCode_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mavros_msgs::CommandCode_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mavros_msgs::CommandCode_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mavros_msgs::CommandCode_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mavros_msgs::CommandCode_<ContainerAllocator> >
{
  static const char* value()
  {
    return "f7e54ea3892a961cc44c9350fdb0855e";
  }

  static const char* value(const ::mavros_msgs::CommandCode_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xf7e54ea3892a961cULL;
  static const uint64_t static_value2 = 0xc44c9350fdb0855eULL;
};

template<class ContainerAllocator>
struct DataType< ::mavros_msgs::CommandCode_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mavros_msgs/CommandCode";
  }

  static const char* value(const ::mavros_msgs::CommandCode_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mavros_msgs::CommandCode_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# Some MAV_CMD command codes.\n\
# Actual meaning and params you may find in MAVLink documentation\n\
# http://mavlink.org/messages/common#ENUM_MAV_CMD\n\
\n\
# some common MAV_CMD\n\
uint16 CMD_DO_SET_MODE = 176\n\
uint16 CMD_DO_JUMP = 177\n\
uint16 CMD_DO_CHANGE_SPEED = 178\n\
uint16 CMD_DO_SET_HOME = 179\n\
uint16 CMD_DO_SET_RELAY = 181\n\
uint16 CMD_DO_REPEAT_RELAY = 182\n\
uint16 CMD_DO_SET_SERVO = 183\n\
uint16 CMD_DO_REPEAT_SERVO = 184\n\
uint16 CMD_DO_CONTROL_VIDEO = 200\n\
uint16 CMD_DO_SET_ROI = 201\n\
uint16 CMD_DO_MOUNT_CONTROL = 205\n\
uint16 CMD_DO_SET_CAM_TRIGG_DIST = 206\n\
uint16 CMD_DO_FENCE_ENABLE = 207\n\
uint16 CMD_DO_PARACHUTE = 208\n\
uint16 CMD_DO_INVERTED_FLIGHT = 210\n\
uint16 CMD_DO_MOUNT_CONTROL_QUAT = 220\n\
uint16 CMD_PREFLIGHT_CALIBRATION = 241\n\
uint16 CMD_MISSION_START = 300\n\
uint16 CMD_COMPONENT_ARM_DISARM = 400\n\
uint16 CMD_START_RX_PAIR = 500\n\
uint16 CMD_REQUEST_AUTOPILOT_CAPABILITIES = 520\n\
uint16 CMD_DO_TRIGGER_CONTROL = 2003\n\
\n\
# Waypoint related commands\n\
uint16 NAV_WAYPOINT = 16\n\
uint16 NAV_LOITER_UNLIM = 17\n\
uint16 NAV_LOITER_TURNS = 18\n\
uint16 NAV_LOITER_TIME = 19\n\
uint16 NAV_RETURN_TO_LAUNCH = 20\n\
uint16 NAV_LAND = 21\n\
uint16 NAV_TAKEOFF = 22\n\
\n\
";
  }

  static const char* value(const ::mavros_msgs::CommandCode_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mavros_msgs::CommandCode_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct CommandCode_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mavros_msgs::CommandCode_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::mavros_msgs::CommandCode_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // MAVROS_MSGS_MESSAGE_COMMANDCODE_H
