// Generated by gencpp from file ds_core_msgs/IoCommand.msg
// DO NOT EDIT!


#ifndef DS_CORE_MSGS_MESSAGE_IOCOMMAND_H
#define DS_CORE_MSGS_MESSAGE_IOCOMMAND_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace ds_core_msgs
{
template <class ContainerAllocator>
struct IoCommand_
{
  typedef IoCommand_<ContainerAllocator> Type;

  IoCommand_()
    : id(0)
    , command()
    , emitOnMatch(false)
    , timeoutWarn(false)
    , forceNext(false)
    , stateTransErr(false)
    , delayBefore_ms(0.0)
    , delayAfter_ms(0.0)
    , timeout_ms(0.0)  {
    }
  IoCommand_(const ContainerAllocator& _alloc)
    : id(0)
    , command(_alloc)
    , emitOnMatch(false)
    , timeoutWarn(false)
    , forceNext(false)
    , stateTransErr(false)
    , delayBefore_ms(0.0)
    , delayAfter_ms(0.0)
    , timeout_ms(0.0)  {
  (void)_alloc;
    }



   typedef uint64_t _id_type;
  _id_type id;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _command_type;
  _command_type command;

   typedef uint8_t _emitOnMatch_type;
  _emitOnMatch_type emitOnMatch;

   typedef uint8_t _timeoutWarn_type;
  _timeoutWarn_type timeoutWarn;

   typedef uint8_t _forceNext_type;
  _forceNext_type forceNext;

   typedef uint8_t _stateTransErr_type;
  _stateTransErr_type stateTransErr;

   typedef float _delayBefore_ms_type;
  _delayBefore_ms_type delayBefore_ms;

   typedef float _delayAfter_ms_type;
  _delayAfter_ms_type delayAfter_ms;

   typedef float _timeout_ms_type;
  _timeout_ms_type timeout_ms;





  typedef boost::shared_ptr< ::ds_core_msgs::IoCommand_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ds_core_msgs::IoCommand_<ContainerAllocator> const> ConstPtr;

}; // struct IoCommand_

typedef ::ds_core_msgs::IoCommand_<std::allocator<void> > IoCommand;

typedef boost::shared_ptr< ::ds_core_msgs::IoCommand > IoCommandPtr;
typedef boost::shared_ptr< ::ds_core_msgs::IoCommand const> IoCommandConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ds_core_msgs::IoCommand_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ds_core_msgs::IoCommand_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::ds_core_msgs::IoCommand_<ContainerAllocator1> & lhs, const ::ds_core_msgs::IoCommand_<ContainerAllocator2> & rhs)
{
  return lhs.id == rhs.id &&
    lhs.command == rhs.command &&
    lhs.emitOnMatch == rhs.emitOnMatch &&
    lhs.timeoutWarn == rhs.timeoutWarn &&
    lhs.forceNext == rhs.forceNext &&
    lhs.stateTransErr == rhs.stateTransErr &&
    lhs.delayBefore_ms == rhs.delayBefore_ms &&
    lhs.delayAfter_ms == rhs.delayAfter_ms &&
    lhs.timeout_ms == rhs.timeout_ms;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::ds_core_msgs::IoCommand_<ContainerAllocator1> & lhs, const ::ds_core_msgs::IoCommand_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace ds_core_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::ds_core_msgs::IoCommand_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ds_core_msgs::IoCommand_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ds_core_msgs::IoCommand_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ds_core_msgs::IoCommand_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ds_core_msgs::IoCommand_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ds_core_msgs::IoCommand_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ds_core_msgs::IoCommand_<ContainerAllocator> >
{
  static const char* value()
  {
    return "1c62629f17ec75efe2b0872e2a6c6077";
  }

  static const char* value(const ::ds_core_msgs::IoCommand_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x1c62629f17ec75efULL;
  static const uint64_t static_value2 = 0xe2b0872e2a6c6077ULL;
};

template<class ContainerAllocator>
struct DataType< ::ds_core_msgs::IoCommand_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ds_core_msgs/IoCommand";
  }

  static const char* value(const ::ds_core_msgs::IoCommand_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ds_core_msgs::IoCommand_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# The command's state machine ID.  Managed by the state machine\n"
"uint64 id\n"
"\n"
"# The command to send\n"
"string command\n"
"\n"
"# Send the received buffer out on matching\n"
"bool emitOnMatch\n"
"\n"
"# Send a warning on timeout\n"
"bool timeoutWarn\n"
"\n"
"# Force the next message to come from the same queue.\n"
"# Useful when you need to run two commands (e.g., address + command)\n"
"bool forceNext\n"
"\n"
"# Send an error message on state transition guard condition check\n"
"bool stateTransErr\n"
"\n"
"# Delay before sending the command, in milliseconds\n"
"float32 delayBefore_ms\n"
"\n"
"# Delay After receiving a reply, in milliseconds\n"
"float32 delayAfter_ms\n"
"\n"
"# The maximum amount of time (in milliseconds) to wait for\n"
"# a reply.  A timeout <= 0 means \"wait forever\"\n"
"float32 timeout_ms\n"
"\n"
;
  }

  static const char* value(const ::ds_core_msgs::IoCommand_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ds_core_msgs::IoCommand_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.id);
      stream.next(m.command);
      stream.next(m.emitOnMatch);
      stream.next(m.timeoutWarn);
      stream.next(m.forceNext);
      stream.next(m.stateTransErr);
      stream.next(m.delayBefore_ms);
      stream.next(m.delayAfter_ms);
      stream.next(m.timeout_ms);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct IoCommand_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ds_core_msgs::IoCommand_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ds_core_msgs::IoCommand_<ContainerAllocator>& v)
  {
    s << indent << "id: ";
    Printer<uint64_t>::stream(s, indent + "  ", v.id);
    s << indent << "command: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.command);
    s << indent << "emitOnMatch: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.emitOnMatch);
    s << indent << "timeoutWarn: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.timeoutWarn);
    s << indent << "forceNext: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.forceNext);
    s << indent << "stateTransErr: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.stateTransErr);
    s << indent << "delayBefore_ms: ";
    Printer<float>::stream(s, indent + "  ", v.delayBefore_ms);
    s << indent << "delayAfter_ms: ";
    Printer<float>::stream(s, indent + "  ", v.delayAfter_ms);
    s << indent << "timeout_ms: ";
    Printer<float>::stream(s, indent + "  ", v.timeout_ms);
  }
};

} // namespace message_operations
} // namespace ros

#endif // DS_CORE_MSGS_MESSAGE_IOCOMMAND_H
