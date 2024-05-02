// Generated by gencpp from file ds_multibeam_msgs/QueryCmdResponse.msg
// DO NOT EDIT!


#ifndef DS_MULTIBEAM_MSGS_MESSAGE_QUERYCMDRESPONSE_H
#define DS_MULTIBEAM_MSGS_MESSAGE_QUERYCMDRESPONSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace ds_multibeam_msgs
{
template <class ContainerAllocator>
struct QueryCmdResponse_
{
  typedef QueryCmdResponse_<ContainerAllocator> Type;

  QueryCmdResponse_()
    : command_sent()  {
    }
  QueryCmdResponse_(const ContainerAllocator& _alloc)
    : command_sent(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _command_sent_type;
  _command_sent_type command_sent;





  typedef boost::shared_ptr< ::ds_multibeam_msgs::QueryCmdResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ds_multibeam_msgs::QueryCmdResponse_<ContainerAllocator> const> ConstPtr;

}; // struct QueryCmdResponse_

typedef ::ds_multibeam_msgs::QueryCmdResponse_<std::allocator<void> > QueryCmdResponse;

typedef boost::shared_ptr< ::ds_multibeam_msgs::QueryCmdResponse > QueryCmdResponsePtr;
typedef boost::shared_ptr< ::ds_multibeam_msgs::QueryCmdResponse const> QueryCmdResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ds_multibeam_msgs::QueryCmdResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ds_multibeam_msgs::QueryCmdResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::ds_multibeam_msgs::QueryCmdResponse_<ContainerAllocator1> & lhs, const ::ds_multibeam_msgs::QueryCmdResponse_<ContainerAllocator2> & rhs)
{
  return lhs.command_sent == rhs.command_sent;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::ds_multibeam_msgs::QueryCmdResponse_<ContainerAllocator1> & lhs, const ::ds_multibeam_msgs::QueryCmdResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace ds_multibeam_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::ds_multibeam_msgs::QueryCmdResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ds_multibeam_msgs::QueryCmdResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ds_multibeam_msgs::QueryCmdResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ds_multibeam_msgs::QueryCmdResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ds_multibeam_msgs::QueryCmdResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ds_multibeam_msgs::QueryCmdResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ds_multibeam_msgs::QueryCmdResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "150b96eca7c7d2e329351e0fdf0451f0";
  }

  static const char* value(const ::ds_multibeam_msgs::QueryCmdResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x150b96eca7c7d2e3ULL;
  static const uint64_t static_value2 = 0x29351e0fdf0451f0ULL;
};

template<class ContainerAllocator>
struct DataType< ::ds_multibeam_msgs::QueryCmdResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ds_multibeam_msgs/QueryCmdResponse";
  }

  static const char* value(const ::ds_multibeam_msgs::QueryCmdResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ds_multibeam_msgs::QueryCmdResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string command_sent\n"
;
  }

  static const char* value(const ::ds_multibeam_msgs::QueryCmdResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ds_multibeam_msgs::QueryCmdResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.command_sent);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct QueryCmdResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ds_multibeam_msgs::QueryCmdResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ds_multibeam_msgs::QueryCmdResponse_<ContainerAllocator>& v)
  {
    s << indent << "command_sent: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.command_sent);
  }
};

} // namespace message_operations
} // namespace ros

#endif // DS_MULTIBEAM_MSGS_MESSAGE_QUERYCMDRESPONSE_H
