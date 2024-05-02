// Generated by gencpp from file ds_core_msgs/Status.msg
// DO NOT EDIT!


#ifndef DS_CORE_MSGS_MESSAGE_STATUS_H
#define DS_CORE_MSGS_MESSAGE_STATUS_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <ds_core_msgs/DsHeader.h>

namespace ds_core_msgs
{
template <class ContainerAllocator>
struct Status_
{
  typedef Status_<ContainerAllocator> Type;

  Status_()
    : ds_header()
    , status(0)
    , descriptive_name()  {
    }
  Status_(const ContainerAllocator& _alloc)
    : ds_header(_alloc)
    , status(0)
    , descriptive_name(_alloc)  {
  (void)_alloc;
    }



   typedef  ::ds_core_msgs::DsHeader_<ContainerAllocator>  _ds_header_type;
  _ds_header_type ds_header;

   typedef uint8_t _status_type;
  _status_type status;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _descriptive_name_type;
  _descriptive_name_type descriptive_name;



// reducing the odds to have name collisions with Windows.h 
#if defined(_WIN32) && defined(STATUS_GOOD)
  #undef STATUS_GOOD
#endif
#if defined(_WIN32) && defined(STATUS_WARN)
  #undef STATUS_WARN
#endif
#if defined(_WIN32) && defined(STATUS_ERROR)
  #undef STATUS_ERROR
#endif

  enum {
    STATUS_GOOD = 0u,
    STATUS_WARN = 1u,
    STATUS_ERROR = 2u,
  };


  typedef boost::shared_ptr< ::ds_core_msgs::Status_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ds_core_msgs::Status_<ContainerAllocator> const> ConstPtr;

}; // struct Status_

typedef ::ds_core_msgs::Status_<std::allocator<void> > Status;

typedef boost::shared_ptr< ::ds_core_msgs::Status > StatusPtr;
typedef boost::shared_ptr< ::ds_core_msgs::Status const> StatusConstPtr;

// constants requiring out of line definition

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ds_core_msgs::Status_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ds_core_msgs::Status_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::ds_core_msgs::Status_<ContainerAllocator1> & lhs, const ::ds_core_msgs::Status_<ContainerAllocator2> & rhs)
{
  return lhs.ds_header == rhs.ds_header &&
    lhs.status == rhs.status &&
    lhs.descriptive_name == rhs.descriptive_name;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::ds_core_msgs::Status_<ContainerAllocator1> & lhs, const ::ds_core_msgs::Status_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace ds_core_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::ds_core_msgs::Status_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ds_core_msgs::Status_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ds_core_msgs::Status_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ds_core_msgs::Status_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ds_core_msgs::Status_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ds_core_msgs::Status_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ds_core_msgs::Status_<ContainerAllocator> >
{
  static const char* value()
  {
    return "8a1dacf20c0ee1eba2ab97fdf58e007f";
  }

  static const char* value(const ::ds_core_msgs::Status_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x8a1dacf20c0ee1ebULL;
  static const uint64_t static_value2 = 0xa2ab97fdf58e007fULL;
};

template<class ContainerAllocator>
struct DataType< ::ds_core_msgs::Status_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ds_core_msgs/Status";
  }

  static const char* value(const ::ds_core_msgs::Status_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ds_core_msgs::Status_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ds_core_msgs/DsHeader ds_header\n"
"\n"
"uint8 STATUS_GOOD = 0\n"
"uint8 STATUS_WARN = 1\n"
"uint8 STATUS_ERROR = 2\n"
"\n"
"# Status Indicator\n"
"uint8 status\n"
"\n"
"# Human-readable name of sender\n"
"string descriptive_name\n"
"\n"
"================================================================================\n"
"MSG: ds_core_msgs/DsHeader\n"
"# This is half our standard header for ds_msgs; see\n"
"# HEADERS.md for details\n"
"\n"
"# This header should ALWAYS be paired with a std_msgs/Header\n"
"# and should ALWAYS reference HEADERS.md.  If you're looking at this\n"
"# file to add headers to a type, you probably want to copy/paste\n"
"# the following block:\n"
"#\n"
"#     # The standard 2-part DsHeader block\n"
"#     # This allows both a standard ROS header and DS-specific header blocks\n"
"#     # See HEADERS.md in ds_core_msgs for details\n"
"#     std_msgs/Header header\n"
"#     ds_core_msgs/DsHeader ds_header\n"
"#\n"
"\n"
"# Time data was received or sent out (i/o time)\n"
"time io_time\n"
"\n"
"# Sensor source UUID\n"
"uint8[16] source_uuid\n"
"\n"
;
  }

  static const char* value(const ::ds_core_msgs::Status_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ds_core_msgs::Status_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.ds_header);
      stream.next(m.status);
      stream.next(m.descriptive_name);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Status_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ds_core_msgs::Status_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ds_core_msgs::Status_<ContainerAllocator>& v)
  {
    s << indent << "ds_header: ";
    s << std::endl;
    Printer< ::ds_core_msgs::DsHeader_<ContainerAllocator> >::stream(s, indent + "  ", v.ds_header);
    s << indent << "status: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.status);
    s << indent << "descriptive_name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.descriptive_name);
  }
};

} // namespace message_operations
} // namespace ros

#endif // DS_CORE_MSGS_MESSAGE_STATUS_H
