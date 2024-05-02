// Generated by gencpp from file ds_multibeam_msgs/PingCmd.msg
// DO NOT EDIT!


#ifndef DS_MULTIBEAM_MSGS_MESSAGE_PINGCMD_H
#define DS_MULTIBEAM_MSGS_MESSAGE_PINGCMD_H

#include <ros/service_traits.h>


#include <ds_multibeam_msgs/PingCmdRequest.h>
#include <ds_multibeam_msgs/PingCmdResponse.h>


namespace ds_multibeam_msgs
{

struct PingCmd
{

typedef PingCmdRequest Request;
typedef PingCmdResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct PingCmd
} // namespace ds_multibeam_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::ds_multibeam_msgs::PingCmd > {
  static const char* value()
  {
    return "059b0bbaf98542255d65995c6cce3601";
  }

  static const char* value(const ::ds_multibeam_msgs::PingCmd&) { return value(); }
};

template<>
struct DataType< ::ds_multibeam_msgs::PingCmd > {
  static const char* value()
  {
    return "ds_multibeam_msgs/PingCmd";
  }

  static const char* value(const ::ds_multibeam_msgs::PingCmd&) { return value(); }
};


// service_traits::MD5Sum< ::ds_multibeam_msgs::PingCmdRequest> should match
// service_traits::MD5Sum< ::ds_multibeam_msgs::PingCmd >
template<>
struct MD5Sum< ::ds_multibeam_msgs::PingCmdRequest>
{
  static const char* value()
  {
    return MD5Sum< ::ds_multibeam_msgs::PingCmd >::value();
  }
  static const char* value(const ::ds_multibeam_msgs::PingCmdRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::ds_multibeam_msgs::PingCmdRequest> should match
// service_traits::DataType< ::ds_multibeam_msgs::PingCmd >
template<>
struct DataType< ::ds_multibeam_msgs::PingCmdRequest>
{
  static const char* value()
  {
    return DataType< ::ds_multibeam_msgs::PingCmd >::value();
  }
  static const char* value(const ::ds_multibeam_msgs::PingCmdRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::ds_multibeam_msgs::PingCmdResponse> should match
// service_traits::MD5Sum< ::ds_multibeam_msgs::PingCmd >
template<>
struct MD5Sum< ::ds_multibeam_msgs::PingCmdResponse>
{
  static const char* value()
  {
    return MD5Sum< ::ds_multibeam_msgs::PingCmd >::value();
  }
  static const char* value(const ::ds_multibeam_msgs::PingCmdResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::ds_multibeam_msgs::PingCmdResponse> should match
// service_traits::DataType< ::ds_multibeam_msgs::PingCmd >
template<>
struct DataType< ::ds_multibeam_msgs::PingCmdResponse>
{
  static const char* value()
  {
    return DataType< ::ds_multibeam_msgs::PingCmd >::value();
  }
  static const char* value(const ::ds_multibeam_msgs::PingCmdResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // DS_MULTIBEAM_MSGS_MESSAGE_PINGCMD_H
