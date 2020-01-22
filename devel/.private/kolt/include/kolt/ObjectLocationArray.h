// Generated by gencpp from file kolt/ObjectLocationArray.msg
// DO NOT EDIT!


#ifndef KOLT_MESSAGE_OBJECTLOCATIONARRAY_H
#define KOLT_MESSAGE_OBJECTLOCATIONARRAY_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <kolt/ObjectLocation.h>

namespace kolt
{
template <class ContainerAllocator>
struct ObjectLocationArray_
{
  typedef ObjectLocationArray_<ContainerAllocator> Type;

  ObjectLocationArray_()
    : header()
    , objects()  {
    }
  ObjectLocationArray_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , objects(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::vector< ::kolt::ObjectLocation_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::kolt::ObjectLocation_<ContainerAllocator> >::other >  _objects_type;
  _objects_type objects;





  typedef boost::shared_ptr< ::kolt::ObjectLocationArray_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::kolt::ObjectLocationArray_<ContainerAllocator> const> ConstPtr;

}; // struct ObjectLocationArray_

typedef ::kolt::ObjectLocationArray_<std::allocator<void> > ObjectLocationArray;

typedef boost::shared_ptr< ::kolt::ObjectLocationArray > ObjectLocationArrayPtr;
typedef boost::shared_ptr< ::kolt::ObjectLocationArray const> ObjectLocationArrayConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::kolt::ObjectLocationArray_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::kolt::ObjectLocationArray_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace kolt

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsMessage': True, 'IsFixedSize': False, 'HasHeader': True}
// {'kolt': ['/home/nvidia/catkin_build_ws/src/kolt_ros/msg'], 'sensor_msgs': ['/opt/ros/melodic/share/sensor_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/melodic/share/std_msgs/cmake/../msg'], 'vision_msgs': ['/home/nvidia/catkin_build_ws/install/share/vision_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/melodic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__dir__', '__doc__', '__eq__', '__format__', '__ge__', '__getattribute__', '__gt__', '__hash__', '__init__', '__init_subclass__', '__le__', '__lt__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsMessage< ::kolt::ObjectLocationArray_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kolt::ObjectLocationArray_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::kolt::ObjectLocationArray_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::kolt::ObjectLocationArray_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kolt::ObjectLocationArray_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kolt::ObjectLocationArray_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::kolt::ObjectLocationArray_<ContainerAllocator> >
{
  static const char* value()
  {
    return "6783eacc0e047fccc11afcdc1829771d";
  }

  static const char* value(const ::kolt::ObjectLocationArray_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x6783eacc0e047fccULL;
  static const uint64_t static_value2 = 0xc11afcdc1829771dULL;
};

template<class ContainerAllocator>
struct DataType< ::kolt::ObjectLocationArray_<ContainerAllocator> >
{
  static const char* value()
  {
    return "kolt/ObjectLocationArray";
  }

  static const char* value(const ::kolt::ObjectLocationArray_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::kolt::ObjectLocationArray_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# A list of 2D detections, for a multi-object 2D detector.\n"
"# Header\n"
"Header header\n"
"\n"
"# A list of object locations\n"
"ObjectLocation[] objects\n"
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
"MSG: kolt/ObjectLocation\n"
"# Header\n"
"Header header\n"
"\n"
"# Detection object center\n"
"int32 x_center\n"
"int32 y_center\n"
"\n"
"# Distance from the object\n"
"float64 distance\n"
"\n"
"# Bearing of the TurtleBot\n"
"float64 bearing\n"
"\n"
"# True range from the object\n"
"float64 true_range\n"
"\n"
"# The object\n"
"string key\n"
;
  }

  static const char* value(const ::kolt::ObjectLocationArray_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::kolt::ObjectLocationArray_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.objects);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ObjectLocationArray_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::kolt::ObjectLocationArray_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::kolt::ObjectLocationArray_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "objects[]" << std::endl;
    for (size_t i = 0; i < v.objects.size(); ++i)
    {
      s << indent << "  objects[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::kolt::ObjectLocation_<ContainerAllocator> >::stream(s, indent + "    ", v.objects[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // KOLT_MESSAGE_OBJECTLOCATIONARRAY_H