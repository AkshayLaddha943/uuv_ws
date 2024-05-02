// Generated by gencpp from file ds_actuator_msgs/XrCmdRequest.msg
// DO NOT EDIT!


#ifndef DS_ACTUATOR_MSGS_MESSAGE_XRCMDREQUEST_H
#define DS_ACTUATOR_MSGS_MESSAGE_XRCMDREQUEST_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace ds_actuator_msgs
{
template <class ContainerAllocator>
struct XrCmdRequest_
{
  typedef XrCmdRequest_<ContainerAllocator> Type;

  XrCmdRequest_()
    : xr_function(0)
    , xr_idx(0)
    , xr_subidx(0)
    , enable(false)  {
    }
  XrCmdRequest_(const ContainerAllocator& _alloc)
    : xr_function(0)
    , xr_idx(0)
    , xr_subidx(0)
    , enable(false)  {
  (void)_alloc;
    }



   typedef int8_t _xr_function_type;
  _xr_function_type xr_function;

   typedef int8_t _xr_idx_type;
  _xr_idx_type xr_idx;

   typedef int8_t _xr_subidx_type;
  _xr_subidx_type xr_subidx;

   typedef uint8_t _enable_type;
  _enable_type enable;



// reducing the odds to have name collisions with Windows.h 
#if defined(_WIN32) && defined(XR_FUNCTION_DCAM)
  #undef XR_FUNCTION_DCAM
#endif
#if defined(_WIN32) && defined(XR_FUNCTION_BURN)
  #undef XR_FUNCTION_BURN
#endif

  enum {
    XR_FUNCTION_DCAM = 1,
    XR_FUNCTION_BURN = 2,
  };


  typedef boost::shared_ptr< ::ds_actuator_msgs::XrCmdRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ds_actuator_msgs::XrCmdRequest_<ContainerAllocator> const> ConstPtr;

}; // struct XrCmdRequest_

typedef ::ds_actuator_msgs::XrCmdRequest_<std::allocator<void> > XrCmdRequest;

typedef boost::shared_ptr< ::ds_actuator_msgs::XrCmdRequest > XrCmdRequestPtr;
typedef boost::shared_ptr< ::ds_actuator_msgs::XrCmdRequest const> XrCmdRequestConstPtr;

// constants requiring out of line definition

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ds_actuator_msgs::XrCmdRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ds_actuator_msgs::XrCmdRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::ds_actuator_msgs::XrCmdRequest_<ContainerAllocator1> & lhs, const ::ds_actuator_msgs::XrCmdRequest_<ContainerAllocator2> & rhs)
{
  return lhs.xr_function == rhs.xr_function &&
    lhs.xr_idx == rhs.xr_idx &&
    lhs.xr_subidx == rhs.xr_subidx &&
    lhs.enable == rhs.enable;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::ds_actuator_msgs::XrCmdRequest_<ContainerAllocator1> & lhs, const ::ds_actuator_msgs::XrCmdRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace ds_actuator_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::ds_actuator_msgs::XrCmdRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ds_actuator_msgs::XrCmdRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ds_actuator_msgs::XrCmdRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ds_actuator_msgs::XrCmdRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ds_actuator_msgs::XrCmdRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ds_actuator_msgs::XrCmdRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ds_actuator_msgs::XrCmdRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "85b4f9d04aab14ca7236c093eaf46d82";
  }

  static const char* value(const ::ds_actuator_msgs::XrCmdRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x85b4f9d04aab14caULL;
  static const uint64_t static_value2 = 0x7236c093eaf46d82ULL;
};

template<class ContainerAllocator>
struct DataType< ::ds_actuator_msgs::XrCmdRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ds_actuator_msgs/XrCmdRequest";
  }

  static const char* value(const ::ds_actuator_msgs::XrCmdRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ds_actuator_msgs::XrCmdRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int8 XR_FUNCTION_DCAM = 1\n"
"int8 XR_FUNCTION_BURN = 2\n"
"int8 xr_function\n"
"\n"
"# ALWAYS 1 or 2\n"
"int8 xr_idx\n"
"\n"
"# DCam/wire number-- always 1 or 2\n"
"int8 xr_subidx\n"
"\n"
"# 1 for on, 0 for off\n"
"bool enable \n"
"\n"
;
  }

  static const char* value(const ::ds_actuator_msgs::XrCmdRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ds_actuator_msgs::XrCmdRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.xr_function);
      stream.next(m.xr_idx);
      stream.next(m.xr_subidx);
      stream.next(m.enable);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct XrCmdRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ds_actuator_msgs::XrCmdRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ds_actuator_msgs::XrCmdRequest_<ContainerAllocator>& v)
  {
    s << indent << "xr_function: ";
    Printer<int8_t>::stream(s, indent + "  ", v.xr_function);
    s << indent << "xr_idx: ";
    Printer<int8_t>::stream(s, indent + "  ", v.xr_idx);
    s << indent << "xr_subidx: ";
    Printer<int8_t>::stream(s, indent + "  ", v.xr_subidx);
    s << indent << "enable: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.enable);
  }
};

} // namespace message_operations
} // namespace ros

#endif // DS_ACTUATOR_MSGS_MESSAGE_XRCMDREQUEST_H
