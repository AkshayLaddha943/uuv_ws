// Generated by gencpp from file ds_hotel_msgs/AbortCmdRequest.msg
// DO NOT EDIT!


#ifndef DS_HOTEL_MSGS_MESSAGE_ABORTCMDREQUEST_H
#define DS_HOTEL_MSGS_MESSAGE_ABORTCMDREQUEST_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace ds_hotel_msgs
{
template <class ContainerAllocator>
struct AbortCmdRequest_
{
  typedef AbortCmdRequest_<ContainerAllocator> Type;

  AbortCmdRequest_()
    : command(0)  {
    }
  AbortCmdRequest_(const ContainerAllocator& _alloc)
    : command(0)  {
  (void)_alloc;
    }



   typedef uint8_t _command_type;
  _command_type command;



// reducing the odds to have name collisions with Windows.h 
#if defined(_WIN32) && defined(ABORT_CMD_ABORT)
  #undef ABORT_CMD_ABORT
#endif
#if defined(_WIN32) && defined(ABORT_CMD_DONTABORT)
  #undef ABORT_CMD_DONTABORT
#endif
#if defined(_WIN32) && defined(ABORT_CMD_ENABLE)
  #undef ABORT_CMD_ENABLE
#endif
#if defined(_WIN32) && defined(ABORT_CMD_DISABLE)
  #undef ABORT_CMD_DISABLE
#endif

  enum {
    ABORT_CMD_ABORT = 1u,
    ABORT_CMD_DONTABORT = 2u,
    ABORT_CMD_ENABLE = 3u,
    ABORT_CMD_DISABLE = 4u,
  };


  typedef boost::shared_ptr< ::ds_hotel_msgs::AbortCmdRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ds_hotel_msgs::AbortCmdRequest_<ContainerAllocator> const> ConstPtr;

}; // struct AbortCmdRequest_

typedef ::ds_hotel_msgs::AbortCmdRequest_<std::allocator<void> > AbortCmdRequest;

typedef boost::shared_ptr< ::ds_hotel_msgs::AbortCmdRequest > AbortCmdRequestPtr;
typedef boost::shared_ptr< ::ds_hotel_msgs::AbortCmdRequest const> AbortCmdRequestConstPtr;

// constants requiring out of line definition

   

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ds_hotel_msgs::AbortCmdRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ds_hotel_msgs::AbortCmdRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::ds_hotel_msgs::AbortCmdRequest_<ContainerAllocator1> & lhs, const ::ds_hotel_msgs::AbortCmdRequest_<ContainerAllocator2> & rhs)
{
  return lhs.command == rhs.command;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::ds_hotel_msgs::AbortCmdRequest_<ContainerAllocator1> & lhs, const ::ds_hotel_msgs::AbortCmdRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace ds_hotel_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::ds_hotel_msgs::AbortCmdRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ds_hotel_msgs::AbortCmdRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ds_hotel_msgs::AbortCmdRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ds_hotel_msgs::AbortCmdRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ds_hotel_msgs::AbortCmdRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ds_hotel_msgs::AbortCmdRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ds_hotel_msgs::AbortCmdRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "64746dbc15e76695c5056909bb89036b";
  }

  static const char* value(const ::ds_hotel_msgs::AbortCmdRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x64746dbc15e76695ULL;
  static const uint64_t static_value2 = 0xc5056909bb89036bULL;
};

template<class ContainerAllocator>
struct DataType< ::ds_hotel_msgs::AbortCmdRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ds_hotel_msgs/AbortCmdRequest";
  }

  static const char* value(const ::ds_hotel_msgs::AbortCmdRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ds_hotel_msgs::AbortCmdRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint8 ABORT_CMD_ABORT=1\n"
"uint8 ABORT_CMD_DONTABORT=2\n"
"uint8 ABORT_CMD_ENABLE=3\n"
"uint8 ABORT_CMD_DISABLE=4\n"
"\n"
"uint8 command\n"
;
  }

  static const char* value(const ::ds_hotel_msgs::AbortCmdRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ds_hotel_msgs::AbortCmdRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.command);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct AbortCmdRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ds_hotel_msgs::AbortCmdRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ds_hotel_msgs::AbortCmdRequest_<ContainerAllocator>& v)
  {
    s << indent << "command: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.command);
  }
};

} // namespace message_operations
} // namespace ros

#endif // DS_HOTEL_MSGS_MESSAGE_ABORTCMDREQUEST_H
