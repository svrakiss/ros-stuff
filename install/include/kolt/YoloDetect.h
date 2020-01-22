// Generated by gencpp from file kolt/YoloDetect.msg
// DO NOT EDIT!


#ifndef KOLT_MESSAGE_YOLODETECT_H
#define KOLT_MESSAGE_YOLODETECT_H

#include <ros/service_traits.h>


#include <kolt/YoloDetectRequest.h>
#include <kolt/YoloDetectResponse.h>


namespace kolt
{

struct YoloDetect
{

typedef YoloDetectRequest Request;
typedef YoloDetectResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct YoloDetect
} // namespace kolt


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::kolt::YoloDetect > {
  static const char* value()
  {
    return "0c98907c2772621acd431740725bdb9a";
  }

  static const char* value(const ::kolt::YoloDetect&) { return value(); }
};

template<>
struct DataType< ::kolt::YoloDetect > {
  static const char* value()
  {
    return "kolt/YoloDetect";
  }

  static const char* value(const ::kolt::YoloDetect&) { return value(); }
};


// service_traits::MD5Sum< ::kolt::YoloDetectRequest> should match 
// service_traits::MD5Sum< ::kolt::YoloDetect > 
template<>
struct MD5Sum< ::kolt::YoloDetectRequest>
{
  static const char* value()
  {
    return MD5Sum< ::kolt::YoloDetect >::value();
  }
  static const char* value(const ::kolt::YoloDetectRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::kolt::YoloDetectRequest> should match 
// service_traits::DataType< ::kolt::YoloDetect > 
template<>
struct DataType< ::kolt::YoloDetectRequest>
{
  static const char* value()
  {
    return DataType< ::kolt::YoloDetect >::value();
  }
  static const char* value(const ::kolt::YoloDetectRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::kolt::YoloDetectResponse> should match 
// service_traits::MD5Sum< ::kolt::YoloDetect > 
template<>
struct MD5Sum< ::kolt::YoloDetectResponse>
{
  static const char* value()
  {
    return MD5Sum< ::kolt::YoloDetect >::value();
  }
  static const char* value(const ::kolt::YoloDetectResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::kolt::YoloDetectResponse> should match 
// service_traits::DataType< ::kolt::YoloDetect > 
template<>
struct DataType< ::kolt::YoloDetectResponse>
{
  static const char* value()
  {
    return DataType< ::kolt::YoloDetect >::value();
  }
  static const char* value(const ::kolt::YoloDetectResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // KOLT_MESSAGE_YOLODETECT_H