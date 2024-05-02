// Generated by gencpp from file ds_core_msgs/RawData.msg
// DO NOT EDIT!


#ifndef DS_CORE_MSGS_MESSAGE_RAWDATA_H
#define DS_CORE_MSGS_MESSAGE_RAWDATA_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <ds_core_msgs/DsHeader.h>

namespace ds_core_msgs
{
template <class ContainerAllocator>
struct RawData_
{
  typedef RawData_<ContainerAllocator> Type;

  RawData_()
    : header()
    , ds_header()
    , data_direction(0)
    , data()  {
    }
  RawData_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , ds_header(_alloc)
    , data_direction(0)
    , data(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef  ::ds_core_msgs::DsHeader_<ContainerAllocator>  _ds_header_type;
  _ds_header_type ds_header;

   typedef int8_t _data_direction_type;
  _data_direction_type data_direction;

   typedef std::vector<uint8_t, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<uint8_t>> _data_type;
  _data_type data;



// reducing the odds to have name collisions with Windows.h 
#if defined(_WIN32) && defined(DATA_OUT)
  #undef DATA_OUT
#endif
#if defined(_WIN32) && defined(DATA_IN)
  #undef DATA_IN
#endif

  enum {
    DATA_OUT = 0,
    DATA_IN = 1,
  };


  typedef boost::shared_ptr< ::ds_core_msgs::RawData_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ds_core_msgs::RawData_<ContainerAllocator> const> ConstPtr;

}; // struct RawData_

typedef ::ds_core_msgs::RawData_<std::allocator<void> > RawData;

typedef boost::shared_ptr< ::ds_core_msgs::RawData > RawDataPtr;
typedef boost::shared_ptr< ::ds_core_msgs::RawData const> RawDataConstPtr;

// constants requiring out of line definition

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ds_core_msgs::RawData_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ds_core_msgs::RawData_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::ds_core_msgs::RawData_<ContainerAllocator1> & lhs, const ::ds_core_msgs::RawData_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.ds_header == rhs.ds_header &&
    lhs.data_direction == rhs.data_direction &&
    lhs.data == rhs.data;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::ds_core_msgs::RawData_<ContainerAllocator1> & lhs, const ::ds_core_msgs::RawData_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace ds_core_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::ds_core_msgs::RawData_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ds_core_msgs::RawData_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ds_core_msgs::RawData_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ds_core_msgs::RawData_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ds_core_msgs::RawData_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ds_core_msgs::RawData_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ds_core_msgs::RawData_<ContainerAllocator> >
{
  static const char* value()
  {
    return "1aef5cd473d20800949bfbcae7eb60ae";
  }

  static const char* value(const ::ds_core_msgs::RawData_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x1aef5cd473d20800ULL;
  static const uint64_t static_value2 = 0x949bfbcae7eb60aeULL;
};

template<class ContainerAllocator>
struct DataType< ::ds_core_msgs::RawData_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ds_core_msgs/RawData";
  }

  static const char* value(const ::ds_core_msgs::RawData_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ds_core_msgs::RawData_<ContainerAllocator> >
{
  static const char* value()
  {
    return "#\n"
"# A sequence of bytes\n"
"#\n"
"\n"
"# The standard 2-part DsHeader block\n"
"# This allows both a standard ROS header and DS-specific header blocks\n"
"# See HEADERS.md in ds_core_msgs for details\n"
"std_msgs/Header header\n"
"ds_core_msgs/DsHeader ds_header\n"
"\n"
"\n"
"int8 DATA_OUT=0 \n"
"int8 DATA_IN=1\n"
"\n"
"int8 data_direction\n"
"\n"
"uint8[] data\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
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

  static const char* value(const ::ds_core_msgs::RawData_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ds_core_msgs::RawData_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.ds_header);
      stream.next(m.data_direction);
      stream.next(m.data);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct RawData_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ds_core_msgs::RawData_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ds_core_msgs::RawData_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "ds_header: ";
    s << std::endl;
    Printer< ::ds_core_msgs::DsHeader_<ContainerAllocator> >::stream(s, indent + "  ", v.ds_header);
    s << indent << "data_direction: ";
    Printer<int8_t>::stream(s, indent + "  ", v.data_direction);
    s << indent << "data[]" << std::endl;
    for (size_t i = 0; i < v.data.size(); ++i)
    {
      s << indent << "  data[" << i << "]: ";
      Printer<uint8_t>::stream(s, indent + "  ", v.data[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // DS_CORE_MSGS_MESSAGE_RAWDATA_H
