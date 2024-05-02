// Generated by gencpp from file ds_control_msgs/RovAllocationEnum.msg
// DO NOT EDIT!


#ifndef DS_CONTROL_MSGS_MESSAGE_ROVALLOCATIONENUM_H
#define DS_CONTROL_MSGS_MESSAGE_ROVALLOCATIONENUM_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace ds_control_msgs
{
template <class ContainerAllocator>
struct RovAllocationEnum_
{
  typedef RovAllocationEnum_<ContainerAllocator> Type;

  RovAllocationEnum_()
    {
    }
  RovAllocationEnum_(const ContainerAllocator& _alloc)
    {
  (void)_alloc;
    }





// reducing the odds to have name collisions with Windows.h 
#if defined(_WIN32) && defined(IDLE)
  #undef IDLE
#endif
#if defined(_WIN32) && defined(ROV)
  #undef ROV
#endif
#if defined(_WIN32) && defined(USER_DEFINED)
  #undef USER_DEFINED
#endif

  enum {
    IDLE = 0u,
    ROV = 1u,
    USER_DEFINED = 65535u,
  };


  typedef boost::shared_ptr< ::ds_control_msgs::RovAllocationEnum_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ds_control_msgs::RovAllocationEnum_<ContainerAllocator> const> ConstPtr;

}; // struct RovAllocationEnum_

typedef ::ds_control_msgs::RovAllocationEnum_<std::allocator<void> > RovAllocationEnum;

typedef boost::shared_ptr< ::ds_control_msgs::RovAllocationEnum > RovAllocationEnumPtr;
typedef boost::shared_ptr< ::ds_control_msgs::RovAllocationEnum const> RovAllocationEnumConstPtr;

// constants requiring out of line definition

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ds_control_msgs::RovAllocationEnum_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ds_control_msgs::RovAllocationEnum_<ContainerAllocator> >::stream(s, "", v);
return s;
}


} // namespace ds_control_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::ds_control_msgs::RovAllocationEnum_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ds_control_msgs::RovAllocationEnum_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ds_control_msgs::RovAllocationEnum_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ds_control_msgs::RovAllocationEnum_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ds_control_msgs::RovAllocationEnum_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ds_control_msgs::RovAllocationEnum_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ds_control_msgs::RovAllocationEnum_<ContainerAllocator> >
{
  static const char* value()
  {
    return "13e36e0cd08f294bd550f67723428adf";
  }

  static const char* value(const ::ds_control_msgs::RovAllocationEnum_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x13e36e0cd08f294bULL;
  static const uint64_t static_value2 = 0xd550f67723428adfULL;
};

template<class ContainerAllocator>
struct DataType< ::ds_control_msgs::RovAllocationEnum_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ds_control_msgs/RovAllocationEnum";
  }

  static const char* value(const ::ds_control_msgs::RovAllocationEnum_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ds_control_msgs::RovAllocationEnum_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint32 IDLE          = 0\n"
"uint32 ROV           = 1\n"
"uint32 USER_DEFINED  = 65535\n"
;
  }

  static const char* value(const ::ds_control_msgs::RovAllocationEnum_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ds_control_msgs::RovAllocationEnum_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct RovAllocationEnum_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ds_control_msgs::RovAllocationEnum_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::ds_control_msgs::RovAllocationEnum_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // DS_CONTROL_MSGS_MESSAGE_ROVALLOCATIONENUM_H
