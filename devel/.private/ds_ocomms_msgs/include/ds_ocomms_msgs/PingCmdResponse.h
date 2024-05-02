// Generated by gencpp from file ds_ocomms_msgs/PingCmdResponse.msg
// DO NOT EDIT!


#ifndef DS_OCOMMS_MSGS_MESSAGE_PINGCMDRESPONSE_H
#define DS_OCOMMS_MSGS_MESSAGE_PINGCMDRESPONSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace ds_ocomms_msgs
{
template <class ContainerAllocator>
struct PingCmdResponse_
{
  typedef PingCmdResponse_<ContainerAllocator> Type;

  PingCmdResponse_()
    : action()  {
    }
  PingCmdResponse_(const ContainerAllocator& _alloc)
    : action(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _action_type;
  _action_type action;





  typedef boost::shared_ptr< ::ds_ocomms_msgs::PingCmdResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ds_ocomms_msgs::PingCmdResponse_<ContainerAllocator> const> ConstPtr;

}; // struct PingCmdResponse_

typedef ::ds_ocomms_msgs::PingCmdResponse_<std::allocator<void> > PingCmdResponse;

typedef boost::shared_ptr< ::ds_ocomms_msgs::PingCmdResponse > PingCmdResponsePtr;
typedef boost::shared_ptr< ::ds_ocomms_msgs::PingCmdResponse const> PingCmdResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ds_ocomms_msgs::PingCmdResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ds_ocomms_msgs::PingCmdResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::ds_ocomms_msgs::PingCmdResponse_<ContainerAllocator1> & lhs, const ::ds_ocomms_msgs::PingCmdResponse_<ContainerAllocator2> & rhs)
{
  return lhs.action == rhs.action;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::ds_ocomms_msgs::PingCmdResponse_<ContainerAllocator1> & lhs, const ::ds_ocomms_msgs::PingCmdResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace ds_ocomms_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::ds_ocomms_msgs::PingCmdResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ds_ocomms_msgs::PingCmdResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ds_ocomms_msgs::PingCmdResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ds_ocomms_msgs::PingCmdResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ds_ocomms_msgs::PingCmdResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ds_ocomms_msgs::PingCmdResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ds_ocomms_msgs::PingCmdResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "7757aad79fa343e61bc69ed7f1b7666d";
  }

  static const char* value(const ::ds_ocomms_msgs::PingCmdResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x7757aad79fa343e6ULL;
  static const uint64_t static_value2 = 0x1bc69ed7f1b7666dULL;
};

template<class ContainerAllocator>
struct DataType< ::ds_ocomms_msgs::PingCmdResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ds_ocomms_msgs/PingCmdResponse";
  }

  static const char* value(const ::ds_ocomms_msgs::PingCmdResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ds_ocomms_msgs::PingCmdResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string action\n"
;
  }

  static const char* value(const ::ds_ocomms_msgs::PingCmdResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ds_ocomms_msgs::PingCmdResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.action);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct PingCmdResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ds_ocomms_msgs::PingCmdResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ds_ocomms_msgs::PingCmdResponse_<ContainerAllocator>& v)
  {
    s << indent << "action: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.action);
  }
};

} // namespace message_operations
} // namespace ros

#endif // DS_OCOMMS_MSGS_MESSAGE_PINGCMDRESPONSE_H
