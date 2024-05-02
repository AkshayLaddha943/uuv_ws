// Generated by gencpp from file bruce_msgs/PredictSLAMUpdateRequest.msg
// DO NOT EDIT!


#ifndef BRUCE_MSGS_MESSAGE_PREDICTSLAMUPDATEREQUEST_H
#define BRUCE_MSGS_MESSAGE_PREDICTSLAMUPDATEREQUEST_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <nav_msgs/Path.h>

namespace bruce_msgs
{
template <class ContainerAllocator>
struct PredictSLAMUpdateRequest_
{
  typedef PredictSLAMUpdateRequest_<ContainerAllocator> Type;

  PredictSLAMUpdateRequest_()
    : key(0)
    , return_isam2_update(false)
    , paths()  {
    }
  PredictSLAMUpdateRequest_(const ContainerAllocator& _alloc)
    : key(0)
    , return_isam2_update(false)
    , paths(_alloc)  {
  (void)_alloc;
    }



   typedef uint32_t _key_type;
  _key_type key;

   typedef uint8_t _return_isam2_update_type;
  _return_isam2_update_type return_isam2_update;

   typedef std::vector< ::nav_msgs::Path_<ContainerAllocator> , typename std::allocator_traits<ContainerAllocator>::template rebind_alloc< ::nav_msgs::Path_<ContainerAllocator> >> _paths_type;
  _paths_type paths;





  typedef boost::shared_ptr< ::bruce_msgs::PredictSLAMUpdateRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::bruce_msgs::PredictSLAMUpdateRequest_<ContainerAllocator> const> ConstPtr;

}; // struct PredictSLAMUpdateRequest_

typedef ::bruce_msgs::PredictSLAMUpdateRequest_<std::allocator<void> > PredictSLAMUpdateRequest;

typedef boost::shared_ptr< ::bruce_msgs::PredictSLAMUpdateRequest > PredictSLAMUpdateRequestPtr;
typedef boost::shared_ptr< ::bruce_msgs::PredictSLAMUpdateRequest const> PredictSLAMUpdateRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::bruce_msgs::PredictSLAMUpdateRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::bruce_msgs::PredictSLAMUpdateRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::bruce_msgs::PredictSLAMUpdateRequest_<ContainerAllocator1> & lhs, const ::bruce_msgs::PredictSLAMUpdateRequest_<ContainerAllocator2> & rhs)
{
  return lhs.key == rhs.key &&
    lhs.return_isam2_update == rhs.return_isam2_update &&
    lhs.paths == rhs.paths;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::bruce_msgs::PredictSLAMUpdateRequest_<ContainerAllocator1> & lhs, const ::bruce_msgs::PredictSLAMUpdateRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace bruce_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::bruce_msgs::PredictSLAMUpdateRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::bruce_msgs::PredictSLAMUpdateRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::bruce_msgs::PredictSLAMUpdateRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::bruce_msgs::PredictSLAMUpdateRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::bruce_msgs::PredictSLAMUpdateRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::bruce_msgs::PredictSLAMUpdateRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::bruce_msgs::PredictSLAMUpdateRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "86289840d397dce55a55fd7404f3dfff";
  }

  static const char* value(const ::bruce_msgs::PredictSLAMUpdateRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x86289840d397dce5ULL;
  static const uint64_t static_value2 = 0x5a55fd7404f3dfffULL;
};

template<class ContainerAllocator>
struct DataType< ::bruce_msgs::PredictSLAMUpdateRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bruce_msgs/PredictSLAMUpdateRequest";
  }

  static const char* value(const ::bruce_msgs::PredictSLAMUpdateRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::bruce_msgs::PredictSLAMUpdateRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint32 key\n"
"bool return_isam2_update\n"
"nav_msgs/Path[] paths\n"
"\n"
"================================================================================\n"
"MSG: nav_msgs/Path\n"
"#An array of poses that represents a Path for a robot to follow\n"
"Header header\n"
"geometry_msgs/PoseStamped[] poses\n"
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
"MSG: geometry_msgs/PoseStamped\n"
"# A Pose with reference coordinate frame and timestamp\n"
"Header header\n"
"Pose pose\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Pose\n"
"# A representation of pose in free space, composed of position and orientation. \n"
"Point position\n"
"Quaternion orientation\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Quaternion\n"
"# This represents an orientation in free space in quaternion form.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"float64 w\n"
;
  }

  static const char* value(const ::bruce_msgs::PredictSLAMUpdateRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::bruce_msgs::PredictSLAMUpdateRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.key);
      stream.next(m.return_isam2_update);
      stream.next(m.paths);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct PredictSLAMUpdateRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::bruce_msgs::PredictSLAMUpdateRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::bruce_msgs::PredictSLAMUpdateRequest_<ContainerAllocator>& v)
  {
    s << indent << "key: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.key);
    s << indent << "return_isam2_update: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.return_isam2_update);
    s << indent << "paths[]" << std::endl;
    for (size_t i = 0; i < v.paths.size(); ++i)
    {
      s << indent << "  paths[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::nav_msgs::Path_<ContainerAllocator> >::stream(s, indent + "    ", v.paths[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // BRUCE_MSGS_MESSAGE_PREDICTSLAMUPDATEREQUEST_H
