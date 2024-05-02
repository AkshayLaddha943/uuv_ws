// Generated by gencpp from file ds_core_msgs/ParamUpdate.msg
// DO NOT EDIT!


#ifndef DS_CORE_MSGS_MESSAGE_PARAMUPDATE_H
#define DS_CORE_MSGS_MESSAGE_PARAMUPDATE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <ds_core_msgs/KeyBool.h>
#include <ds_core_msgs/KeyInt.h>
#include <ds_core_msgs/KeyFloat.h>
#include <ds_core_msgs/KeyDouble.h>
#include <ds_core_msgs/KeyString.h>

namespace ds_core_msgs
{
template <class ContainerAllocator>
struct ParamUpdate_
{
  typedef ParamUpdate_<ContainerAllocator> Type;

  ParamUpdate_()
    : stamp()
    , source()
    , bools()
    , ints()
    , floats()
    , doubles()
    , strings()  {
    }
  ParamUpdate_(const ContainerAllocator& _alloc)
    : stamp()
    , source(_alloc)
    , bools(_alloc)
    , ints(_alloc)
    , floats(_alloc)
    , doubles(_alloc)
    , strings(_alloc)  {
  (void)_alloc;
    }



   typedef ros::Time _stamp_type;
  _stamp_type stamp;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _source_type;
  _source_type source;

   typedef std::vector< ::ds_core_msgs::KeyBool_<ContainerAllocator> , typename std::allocator_traits<ContainerAllocator>::template rebind_alloc< ::ds_core_msgs::KeyBool_<ContainerAllocator> >> _bools_type;
  _bools_type bools;

   typedef std::vector< ::ds_core_msgs::KeyInt_<ContainerAllocator> , typename std::allocator_traits<ContainerAllocator>::template rebind_alloc< ::ds_core_msgs::KeyInt_<ContainerAllocator> >> _ints_type;
  _ints_type ints;

   typedef std::vector< ::ds_core_msgs::KeyFloat_<ContainerAllocator> , typename std::allocator_traits<ContainerAllocator>::template rebind_alloc< ::ds_core_msgs::KeyFloat_<ContainerAllocator> >> _floats_type;
  _floats_type floats;

   typedef std::vector< ::ds_core_msgs::KeyDouble_<ContainerAllocator> , typename std::allocator_traits<ContainerAllocator>::template rebind_alloc< ::ds_core_msgs::KeyDouble_<ContainerAllocator> >> _doubles_type;
  _doubles_type doubles;

   typedef std::vector< ::ds_core_msgs::KeyString_<ContainerAllocator> , typename std::allocator_traits<ContainerAllocator>::template rebind_alloc< ::ds_core_msgs::KeyString_<ContainerAllocator> >> _strings_type;
  _strings_type strings;





  typedef boost::shared_ptr< ::ds_core_msgs::ParamUpdate_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ds_core_msgs::ParamUpdate_<ContainerAllocator> const> ConstPtr;

}; // struct ParamUpdate_

typedef ::ds_core_msgs::ParamUpdate_<std::allocator<void> > ParamUpdate;

typedef boost::shared_ptr< ::ds_core_msgs::ParamUpdate > ParamUpdatePtr;
typedef boost::shared_ptr< ::ds_core_msgs::ParamUpdate const> ParamUpdateConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ds_core_msgs::ParamUpdate_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ds_core_msgs::ParamUpdate_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::ds_core_msgs::ParamUpdate_<ContainerAllocator1> & lhs, const ::ds_core_msgs::ParamUpdate_<ContainerAllocator2> & rhs)
{
  return lhs.stamp == rhs.stamp &&
    lhs.source == rhs.source &&
    lhs.bools == rhs.bools &&
    lhs.ints == rhs.ints &&
    lhs.floats == rhs.floats &&
    lhs.doubles == rhs.doubles &&
    lhs.strings == rhs.strings;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::ds_core_msgs::ParamUpdate_<ContainerAllocator1> & lhs, const ::ds_core_msgs::ParamUpdate_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace ds_core_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::ds_core_msgs::ParamUpdate_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ds_core_msgs::ParamUpdate_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ds_core_msgs::ParamUpdate_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ds_core_msgs::ParamUpdate_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ds_core_msgs::ParamUpdate_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ds_core_msgs::ParamUpdate_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ds_core_msgs::ParamUpdate_<ContainerAllocator> >
{
  static const char* value()
  {
    return "6471dfc42f4c1d222d1b58fe65de258a";
  }

  static const char* value(const ::ds_core_msgs::ParamUpdate_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x6471dfc42f4c1d22ULL;
  static const uint64_t static_value2 = 0x2d1b58fe65de258aULL;
};

template<class ContainerAllocator>
struct DataType< ::ds_core_msgs::ParamUpdate_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ds_core_msgs/ParamUpdate";
  }

  static const char* value(const ::ds_core_msgs::ParamUpdate_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ds_core_msgs::ParamUpdate_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n"
"# Maybe our 2-parameter header?  We definitely need to provide loopback detection...\n"
"\n"
"# Time message originated\n"
"time stamp\n"
"\n"
"# Used primarily for loopback detection\n"
"string source\n"
"\n"
"# Key/value pairs for all 5 principal types\n"
"KeyBool[] bools\n"
"KeyInt[] ints\n"
"KeyFloat[] floats\n"
"KeyDouble[] doubles\n"
"KeyString[] strings\n"
"\n"
"\n"
"================================================================================\n"
"MSG: ds_core_msgs/KeyBool\n"
"string key\n"
"bool value\n"
"\n"
"================================================================================\n"
"MSG: ds_core_msgs/KeyInt\n"
"string key\n"
"int32 value\n"
"\n"
"================================================================================\n"
"MSG: ds_core_msgs/KeyFloat\n"
"string key\n"
"float32 value\n"
"\n"
"================================================================================\n"
"MSG: ds_core_msgs/KeyDouble\n"
"string key\n"
"float64 value\n"
"\n"
"================================================================================\n"
"MSG: ds_core_msgs/KeyString\n"
"string key\n"
"string value\n"
;
  }

  static const char* value(const ::ds_core_msgs::ParamUpdate_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ds_core_msgs::ParamUpdate_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.stamp);
      stream.next(m.source);
      stream.next(m.bools);
      stream.next(m.ints);
      stream.next(m.floats);
      stream.next(m.doubles);
      stream.next(m.strings);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ParamUpdate_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ds_core_msgs::ParamUpdate_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ds_core_msgs::ParamUpdate_<ContainerAllocator>& v)
  {
    s << indent << "stamp: ";
    Printer<ros::Time>::stream(s, indent + "  ", v.stamp);
    s << indent << "source: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.source);
    s << indent << "bools[]" << std::endl;
    for (size_t i = 0; i < v.bools.size(); ++i)
    {
      s << indent << "  bools[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::ds_core_msgs::KeyBool_<ContainerAllocator> >::stream(s, indent + "    ", v.bools[i]);
    }
    s << indent << "ints[]" << std::endl;
    for (size_t i = 0; i < v.ints.size(); ++i)
    {
      s << indent << "  ints[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::ds_core_msgs::KeyInt_<ContainerAllocator> >::stream(s, indent + "    ", v.ints[i]);
    }
    s << indent << "floats[]" << std::endl;
    for (size_t i = 0; i < v.floats.size(); ++i)
    {
      s << indent << "  floats[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::ds_core_msgs::KeyFloat_<ContainerAllocator> >::stream(s, indent + "    ", v.floats[i]);
    }
    s << indent << "doubles[]" << std::endl;
    for (size_t i = 0; i < v.doubles.size(); ++i)
    {
      s << indent << "  doubles[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::ds_core_msgs::KeyDouble_<ContainerAllocator> >::stream(s, indent + "    ", v.doubles[i]);
    }
    s << indent << "strings[]" << std::endl;
    for (size_t i = 0; i < v.strings.size(); ++i)
    {
      s << indent << "  strings[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::ds_core_msgs::KeyString_<ContainerAllocator> >::stream(s, indent + "    ", v.strings[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // DS_CORE_MSGS_MESSAGE_PARAMUPDATE_H
