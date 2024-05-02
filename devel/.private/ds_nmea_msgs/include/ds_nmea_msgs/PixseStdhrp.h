// Generated by gencpp from file ds_nmea_msgs/PixseStdhrp.msg
// DO NOT EDIT!


#ifndef DS_NMEA_MSGS_MESSAGE_PIXSESTDHRP_H
#define DS_NMEA_MSGS_MESSAGE_PIXSESTDHRP_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace ds_nmea_msgs
{
template <class ContainerAllocator>
struct PixseStdhrp_
{
  typedef PixseStdhrp_<ContainerAllocator> Type;

  PixseStdhrp_()
    : heading(0.0)
    , roll(0.0)
    , pitch(0.0)
    , checksum(0)  {
    }
  PixseStdhrp_(const ContainerAllocator& _alloc)
    : heading(0.0)
    , roll(0.0)
    , pitch(0.0)
    , checksum(0)  {
  (void)_alloc;
    }



   typedef double _heading_type;
  _heading_type heading;

   typedef double _roll_type;
  _roll_type roll;

   typedef double _pitch_type;
  _pitch_type pitch;

   typedef uint8_t _checksum_type;
  _checksum_type checksum;





  typedef boost::shared_ptr< ::ds_nmea_msgs::PixseStdhrp_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ds_nmea_msgs::PixseStdhrp_<ContainerAllocator> const> ConstPtr;

}; // struct PixseStdhrp_

typedef ::ds_nmea_msgs::PixseStdhrp_<std::allocator<void> > PixseStdhrp;

typedef boost::shared_ptr< ::ds_nmea_msgs::PixseStdhrp > PixseStdhrpPtr;
typedef boost::shared_ptr< ::ds_nmea_msgs::PixseStdhrp const> PixseStdhrpConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ds_nmea_msgs::PixseStdhrp_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ds_nmea_msgs::PixseStdhrp_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::ds_nmea_msgs::PixseStdhrp_<ContainerAllocator1> & lhs, const ::ds_nmea_msgs::PixseStdhrp_<ContainerAllocator2> & rhs)
{
  return lhs.heading == rhs.heading &&
    lhs.roll == rhs.roll &&
    lhs.pitch == rhs.pitch &&
    lhs.checksum == rhs.checksum;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::ds_nmea_msgs::PixseStdhrp_<ContainerAllocator1> & lhs, const ::ds_nmea_msgs::PixseStdhrp_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace ds_nmea_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::ds_nmea_msgs::PixseStdhrp_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ds_nmea_msgs::PixseStdhrp_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ds_nmea_msgs::PixseStdhrp_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ds_nmea_msgs::PixseStdhrp_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ds_nmea_msgs::PixseStdhrp_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ds_nmea_msgs::PixseStdhrp_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ds_nmea_msgs::PixseStdhrp_<ContainerAllocator> >
{
  static const char* value()
  {
    return "514c63541d065ce6775080b546a78c3e";
  }

  static const char* value(const ::ds_nmea_msgs::PixseStdhrp_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x514c63541d065ce6ULL;
  static const uint64_t static_value2 = 0x775080b546a78c3eULL;
};

template<class ContainerAllocator>
struct DataType< ::ds_nmea_msgs::PixseStdhrp_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ds_nmea_msgs/PixseStdhrp";
  }

  static const char* value(const ::ds_nmea_msgs::PixseStdhrp_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ds_nmea_msgs::PixseStdhrp_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# $PIXSE,STDHRP,x.xxx,y.yyy,z.zzz*hh<CR><LF>\n"
"# where:\n"
"# x.xxx is the heading std dev (degrees)\n"
"# y.yyy is the roll std dev (degrees)\n"
"# z.zzz is the pitch std dev (degrees)\n"
"# hh is the checksum\n"
"\n"
"float64 heading\n"
"float64 roll\n"
"float64 pitch\n"
"uint8 checksum\n"
;
  }

  static const char* value(const ::ds_nmea_msgs::PixseStdhrp_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ds_nmea_msgs::PixseStdhrp_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.heading);
      stream.next(m.roll);
      stream.next(m.pitch);
      stream.next(m.checksum);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct PixseStdhrp_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ds_nmea_msgs::PixseStdhrp_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ds_nmea_msgs::PixseStdhrp_<ContainerAllocator>& v)
  {
    s << indent << "heading: ";
    Printer<double>::stream(s, indent + "  ", v.heading);
    s << indent << "roll: ";
    Printer<double>::stream(s, indent + "  ", v.roll);
    s << indent << "pitch: ";
    Printer<double>::stream(s, indent + "  ", v.pitch);
    s << indent << "checksum: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.checksum);
  }
};

} // namespace message_operations
} // namespace ros

#endif // DS_NMEA_MSGS_MESSAGE_PIXSESTDHRP_H
