// Generated by gencpp from file ds_nav_msgs/LatLon.msg
// DO NOT EDIT!


#ifndef DS_NAV_MSGS_MESSAGE_LATLON_H
#define DS_NAV_MSGS_MESSAGE_LATLON_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace ds_nav_msgs
{
template <class ContainerAllocator>
struct LatLon_
{
  typedef LatLon_<ContainerAllocator> Type;

  LatLon_()
    : latitude(0.0)
    , longitude(0.0)  {
    }
  LatLon_(const ContainerAllocator& _alloc)
    : latitude(0.0)
    , longitude(0.0)  {
  (void)_alloc;
    }



   typedef double _latitude_type;
  _latitude_type latitude;

   typedef double _longitude_type;
  _longitude_type longitude;





  typedef boost::shared_ptr< ::ds_nav_msgs::LatLon_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ds_nav_msgs::LatLon_<ContainerAllocator> const> ConstPtr;

}; // struct LatLon_

typedef ::ds_nav_msgs::LatLon_<std::allocator<void> > LatLon;

typedef boost::shared_ptr< ::ds_nav_msgs::LatLon > LatLonPtr;
typedef boost::shared_ptr< ::ds_nav_msgs::LatLon const> LatLonConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ds_nav_msgs::LatLon_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ds_nav_msgs::LatLon_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::ds_nav_msgs::LatLon_<ContainerAllocator1> & lhs, const ::ds_nav_msgs::LatLon_<ContainerAllocator2> & rhs)
{
  return lhs.latitude == rhs.latitude &&
    lhs.longitude == rhs.longitude;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::ds_nav_msgs::LatLon_<ContainerAllocator1> & lhs, const ::ds_nav_msgs::LatLon_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace ds_nav_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::ds_nav_msgs::LatLon_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ds_nav_msgs::LatLon_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ds_nav_msgs::LatLon_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ds_nav_msgs::LatLon_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ds_nav_msgs::LatLon_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ds_nav_msgs::LatLon_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ds_nav_msgs::LatLon_<ContainerAllocator> >
{
  static const char* value()
  {
    return "680c6dc7da65a2421a822205dcbdb600";
  }

  static const char* value(const ::ds_nav_msgs::LatLon_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x680c6dc7da65a242ULL;
  static const uint64_t static_value2 = 0x1a822205dcbdb600ULL;
};

template<class ContainerAllocator>
struct DataType< ::ds_nav_msgs::LatLon_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ds_nav_msgs/LatLon";
  }

  static const char* value(const ::ds_nav_msgs::LatLon_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ds_nav_msgs::LatLon_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# A message that bundles lat/lon\n"
"float64 latitude\n"
"float64 longitude\n"
;
  }

  static const char* value(const ::ds_nav_msgs::LatLon_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ds_nav_msgs::LatLon_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.latitude);
      stream.next(m.longitude);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct LatLon_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ds_nav_msgs::LatLon_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ds_nav_msgs::LatLon_<ContainerAllocator>& v)
  {
    s << indent << "latitude: ";
    Printer<double>::stream(s, indent + "  ", v.latitude);
    s << indent << "longitude: ";
    Printer<double>::stream(s, indent + "  ", v.longitude);
  }
};

} // namespace message_operations
} // namespace ros

#endif // DS_NAV_MSGS_MESSAGE_LATLON_H
