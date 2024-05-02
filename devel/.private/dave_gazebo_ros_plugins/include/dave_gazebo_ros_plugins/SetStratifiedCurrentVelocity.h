// Generated by gencpp from file dave_gazebo_ros_plugins/SetStratifiedCurrentVelocity.msg
// DO NOT EDIT!


#ifndef DAVE_GAZEBO_ROS_PLUGINS_MESSAGE_SETSTRATIFIEDCURRENTVELOCITY_H
#define DAVE_GAZEBO_ROS_PLUGINS_MESSAGE_SETSTRATIFIEDCURRENTVELOCITY_H

#include <ros/service_traits.h>


#include <dave_gazebo_ros_plugins/SetStratifiedCurrentVelocityRequest.h>
#include <dave_gazebo_ros_plugins/SetStratifiedCurrentVelocityResponse.h>


namespace dave_gazebo_ros_plugins
{

struct SetStratifiedCurrentVelocity
{

typedef SetStratifiedCurrentVelocityRequest Request;
typedef SetStratifiedCurrentVelocityResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct SetStratifiedCurrentVelocity
} // namespace dave_gazebo_ros_plugins


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::dave_gazebo_ros_plugins::SetStratifiedCurrentVelocity > {
  static const char* value()
  {
    return "0610cdc667f3e51c92056bf0da5483ce";
  }

  static const char* value(const ::dave_gazebo_ros_plugins::SetStratifiedCurrentVelocity&) { return value(); }
};

template<>
struct DataType< ::dave_gazebo_ros_plugins::SetStratifiedCurrentVelocity > {
  static const char* value()
  {
    return "dave_gazebo_ros_plugins/SetStratifiedCurrentVelocity";
  }

  static const char* value(const ::dave_gazebo_ros_plugins::SetStratifiedCurrentVelocity&) { return value(); }
};


// service_traits::MD5Sum< ::dave_gazebo_ros_plugins::SetStratifiedCurrentVelocityRequest> should match
// service_traits::MD5Sum< ::dave_gazebo_ros_plugins::SetStratifiedCurrentVelocity >
template<>
struct MD5Sum< ::dave_gazebo_ros_plugins::SetStratifiedCurrentVelocityRequest>
{
  static const char* value()
  {
    return MD5Sum< ::dave_gazebo_ros_plugins::SetStratifiedCurrentVelocity >::value();
  }
  static const char* value(const ::dave_gazebo_ros_plugins::SetStratifiedCurrentVelocityRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::dave_gazebo_ros_plugins::SetStratifiedCurrentVelocityRequest> should match
// service_traits::DataType< ::dave_gazebo_ros_plugins::SetStratifiedCurrentVelocity >
template<>
struct DataType< ::dave_gazebo_ros_plugins::SetStratifiedCurrentVelocityRequest>
{
  static const char* value()
  {
    return DataType< ::dave_gazebo_ros_plugins::SetStratifiedCurrentVelocity >::value();
  }
  static const char* value(const ::dave_gazebo_ros_plugins::SetStratifiedCurrentVelocityRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::dave_gazebo_ros_plugins::SetStratifiedCurrentVelocityResponse> should match
// service_traits::MD5Sum< ::dave_gazebo_ros_plugins::SetStratifiedCurrentVelocity >
template<>
struct MD5Sum< ::dave_gazebo_ros_plugins::SetStratifiedCurrentVelocityResponse>
{
  static const char* value()
  {
    return MD5Sum< ::dave_gazebo_ros_plugins::SetStratifiedCurrentVelocity >::value();
  }
  static const char* value(const ::dave_gazebo_ros_plugins::SetStratifiedCurrentVelocityResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::dave_gazebo_ros_plugins::SetStratifiedCurrentVelocityResponse> should match
// service_traits::DataType< ::dave_gazebo_ros_plugins::SetStratifiedCurrentVelocity >
template<>
struct DataType< ::dave_gazebo_ros_plugins::SetStratifiedCurrentVelocityResponse>
{
  static const char* value()
  {
    return DataType< ::dave_gazebo_ros_plugins::SetStratifiedCurrentVelocity >::value();
  }
  static const char* value(const ::dave_gazebo_ros_plugins::SetStratifiedCurrentVelocityResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // DAVE_GAZEBO_ROS_PLUGINS_MESSAGE_SETSTRATIFIEDCURRENTVELOCITY_H
