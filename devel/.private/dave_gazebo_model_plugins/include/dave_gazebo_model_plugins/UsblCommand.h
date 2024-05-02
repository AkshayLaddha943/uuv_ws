// Generated by gencpp from file dave_gazebo_model_plugins/UsblCommand.msg
// DO NOT EDIT!


#ifndef DAVE_GAZEBO_MODEL_PLUGINS_MESSAGE_USBLCOMMAND_H
#define DAVE_GAZEBO_MODEL_PLUGINS_MESSAGE_USBLCOMMAND_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace dave_gazebo_model_plugins
{
template <class ContainerAllocator>
struct UsblCommand_
{
  typedef UsblCommand_<ContainerAllocator> Type;

  UsblCommand_()
    : transponderID(0)
    , commandID(0)
    , data()  {
    }
  UsblCommand_(const ContainerAllocator& _alloc)
    : transponderID(0)
    , commandID(0)
    , data(_alloc)  {
  (void)_alloc;
    }



   typedef int32_t _transponderID_type;
  _transponderID_type transponderID;

   typedef int32_t _commandID_type;
  _commandID_type commandID;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _data_type;
  _data_type data;





  typedef boost::shared_ptr< ::dave_gazebo_model_plugins::UsblCommand_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::dave_gazebo_model_plugins::UsblCommand_<ContainerAllocator> const> ConstPtr;

}; // struct UsblCommand_

typedef ::dave_gazebo_model_plugins::UsblCommand_<std::allocator<void> > UsblCommand;

typedef boost::shared_ptr< ::dave_gazebo_model_plugins::UsblCommand > UsblCommandPtr;
typedef boost::shared_ptr< ::dave_gazebo_model_plugins::UsblCommand const> UsblCommandConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::dave_gazebo_model_plugins::UsblCommand_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::dave_gazebo_model_plugins::UsblCommand_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::dave_gazebo_model_plugins::UsblCommand_<ContainerAllocator1> & lhs, const ::dave_gazebo_model_plugins::UsblCommand_<ContainerAllocator2> & rhs)
{
  return lhs.transponderID == rhs.transponderID &&
    lhs.commandID == rhs.commandID &&
    lhs.data == rhs.data;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::dave_gazebo_model_plugins::UsblCommand_<ContainerAllocator1> & lhs, const ::dave_gazebo_model_plugins::UsblCommand_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace dave_gazebo_model_plugins

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::dave_gazebo_model_plugins::UsblCommand_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dave_gazebo_model_plugins::UsblCommand_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dave_gazebo_model_plugins::UsblCommand_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dave_gazebo_model_plugins::UsblCommand_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dave_gazebo_model_plugins::UsblCommand_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dave_gazebo_model_plugins::UsblCommand_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::dave_gazebo_model_plugins::UsblCommand_<ContainerAllocator> >
{
  static const char* value()
  {
    return "e3f96dcf9a7d238a1575db4f837d5748";
  }

  static const char* value(const ::dave_gazebo_model_plugins::UsblCommand_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xe3f96dcf9a7d238aULL;
  static const uint64_t static_value2 = 0x1575db4f837d5748ULL;
};

template<class ContainerAllocator>
struct DataType< ::dave_gazebo_model_plugins::UsblCommand_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dave_gazebo_model_plugins/UsblCommand";
  }

  static const char* value(const ::dave_gazebo_model_plugins::UsblCommand_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::dave_gazebo_model_plugins::UsblCommand_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 transponderID\n"
"int32 commandID\n"
"string data\n"
;
  }

  static const char* value(const ::dave_gazebo_model_plugins::UsblCommand_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::dave_gazebo_model_plugins::UsblCommand_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.transponderID);
      stream.next(m.commandID);
      stream.next(m.data);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct UsblCommand_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::dave_gazebo_model_plugins::UsblCommand_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::dave_gazebo_model_plugins::UsblCommand_<ContainerAllocator>& v)
  {
    s << indent << "transponderID: ";
    Printer<int32_t>::stream(s, indent + "  ", v.transponderID);
    s << indent << "commandID: ";
    Printer<int32_t>::stream(s, indent + "  ", v.commandID);
    s << indent << "data: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.data);
  }
};

} // namespace message_operations
} // namespace ros

#endif // DAVE_GAZEBO_MODEL_PLUGINS_MESSAGE_USBLCOMMAND_H
