// Generated by gencpp from file vision_msgs/Classification2D.msg
// DO NOT EDIT!


#ifndef VISION_MSGS_MESSAGE_CLASSIFICATION2D_H
#define VISION_MSGS_MESSAGE_CLASSIFICATION2D_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <vision_msgs/ObjectHypothesis.h>
#include <sensor_msgs/Image.h>

namespace vision_msgs
{
template <class ContainerAllocator>
struct Classification2D_
{
  typedef Classification2D_<ContainerAllocator> Type;

  Classification2D_()
    : header()
    , results()
    , source_img()  {
    }
  Classification2D_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , results(_alloc)
    , source_img(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::vector< ::vision_msgs::ObjectHypothesis_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::vision_msgs::ObjectHypothesis_<ContainerAllocator> >::other >  _results_type;
  _results_type results;

   typedef  ::sensor_msgs::Image_<ContainerAllocator>  _source_img_type;
  _source_img_type source_img;





  typedef boost::shared_ptr< ::vision_msgs::Classification2D_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::vision_msgs::Classification2D_<ContainerAllocator> const> ConstPtr;

}; // struct Classification2D_

typedef ::vision_msgs::Classification2D_<std::allocator<void> > Classification2D;

typedef boost::shared_ptr< ::vision_msgs::Classification2D > Classification2DPtr;
typedef boost::shared_ptr< ::vision_msgs::Classification2D const> Classification2DConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::vision_msgs::Classification2D_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::vision_msgs::Classification2D_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace vision_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsMessage': True, 'IsFixedSize': False, 'HasHeader': True}
// {'vision_msgs': ['/home/nvidia/catkin_build_ws/src/vision_msgs/msg'], 'std_msgs': ['/opt/ros/melodic/share/std_msgs/cmake/../msg'], 'sensor_msgs': ['/opt/ros/melodic/share/sensor_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/melodic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__dir__', '__doc__', '__eq__', '__format__', '__ge__', '__getattribute__', '__gt__', '__hash__', '__init__', '__init_subclass__', '__le__', '__lt__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsMessage< ::vision_msgs::Classification2D_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::vision_msgs::Classification2D_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::vision_msgs::Classification2D_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::vision_msgs::Classification2D_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::vision_msgs::Classification2D_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::vision_msgs::Classification2D_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::vision_msgs::Classification2D_<ContainerAllocator> >
{
  static const char* value()
  {
    return "b23d0855d0f41568e09106615351255f";
  }

  static const char* value(const ::vision_msgs::Classification2D_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xb23d0855d0f41568ULL;
  static const uint64_t static_value2 = 0xe09106615351255fULL;
};

template<class ContainerAllocator>
struct DataType< ::vision_msgs::Classification2D_<ContainerAllocator> >
{
  static const char* value()
  {
    return "vision_msgs/Classification2D";
  }

  static const char* value(const ::vision_msgs::Classification2D_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::vision_msgs::Classification2D_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# Defines a 2D classification result.\n"
"#\n"
"# This result does not contain any position information. It is designed for\n"
"#   classifiers, which simply provide class probabilities given a source image.\n"
"\n"
"Header header\n"
"\n"
"# A list of class probabilities. This list need not provide a probability for\n"
"#   every possible class, just ones that are nonzero, or above some\n"
"#   user-defined threshold.\n"
"ObjectHypothesis[] results\n"
"\n"
"# The 2D data that generated these results (i.e. region proposal cropped out of\n"
"#   the image). Not required for all use cases, so it may be empty.\n"
"sensor_msgs/Image source_img\n"
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
"MSG: vision_msgs/ObjectHypothesis\n"
"# An object hypothesis that contains no position information.\n"
"\n"
"# The unique numeric ID of object detected. To get additional information about\n"
"#   this ID, such as its human-readable name, listeners should perform a lookup\n"
"#   in a metadata database. See vision_msgs/VisionInfo.msg for more detail.\n"
"int64 id\n"
"\n"
"# The probability or confidence value of the detected object. By convention,\n"
"#   this value should lie in the range [0-1].\n"
"float64 score\n"
"================================================================================\n"
"MSG: sensor_msgs/Image\n"
"# This message contains an uncompressed image\n"
"# (0, 0) is at top-left corner of image\n"
"#\n"
"\n"
"Header header        # Header timestamp should be acquisition time of image\n"
"                     # Header frame_id should be optical frame of camera\n"
"                     # origin of frame should be optical center of camera\n"
"                     # +x should point to the right in the image\n"
"                     # +y should point down in the image\n"
"                     # +z should point into to plane of the image\n"
"                     # If the frame_id here and the frame_id of the CameraInfo\n"
"                     # message associated with the image conflict\n"
"                     # the behavior is undefined\n"
"\n"
"uint32 height         # image height, that is, number of rows\n"
"uint32 width          # image width, that is, number of columns\n"
"\n"
"# The legal values for encoding are in file src/image_encodings.cpp\n"
"# If you want to standardize a new string format, join\n"
"# ros-users@lists.sourceforge.net and send an email proposing a new encoding.\n"
"\n"
"string encoding       # Encoding of pixels -- channel meaning, ordering, size\n"
"                      # taken from the list of strings in include/sensor_msgs/image_encodings.h\n"
"\n"
"uint8 is_bigendian    # is this data bigendian?\n"
"uint32 step           # Full row length in bytes\n"
"uint8[] data          # actual matrix data, size is (step * rows)\n"
;
  }

  static const char* value(const ::vision_msgs::Classification2D_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::vision_msgs::Classification2D_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.results);
      stream.next(m.source_img);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Classification2D_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::vision_msgs::Classification2D_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::vision_msgs::Classification2D_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "results[]" << std::endl;
    for (size_t i = 0; i < v.results.size(); ++i)
    {
      s << indent << "  results[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::vision_msgs::ObjectHypothesis_<ContainerAllocator> >::stream(s, indent + "    ", v.results[i]);
    }
    s << indent << "source_img: ";
    s << std::endl;
    Printer< ::sensor_msgs::Image_<ContainerAllocator> >::stream(s, indent + "  ", v.source_img);
  }
};

} // namespace message_operations
} // namespace ros

#endif // VISION_MSGS_MESSAGE_CLASSIFICATION2D_H
