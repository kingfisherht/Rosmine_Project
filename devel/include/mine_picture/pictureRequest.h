// Generated by gencpp from file mine_picture/pictureRequest.msg
// DO NOT EDIT!


#ifndef MINE_PICTURE_MESSAGE_PICTUREREQUEST_H
#define MINE_PICTURE_MESSAGE_PICTUREREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace mine_picture
{
template <class ContainerAllocator>
struct pictureRequest_
{
  typedef pictureRequest_<ContainerAllocator> Type;

  pictureRequest_()
    : start(false)  {
    }
  pictureRequest_(const ContainerAllocator& _alloc)
    : start(false)  {
  (void)_alloc;
    }



   typedef uint8_t _start_type;
  _start_type start;





  typedef boost::shared_ptr< ::mine_picture::pictureRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mine_picture::pictureRequest_<ContainerAllocator> const> ConstPtr;

}; // struct pictureRequest_

typedef ::mine_picture::pictureRequest_<std::allocator<void> > pictureRequest;

typedef boost::shared_ptr< ::mine_picture::pictureRequest > pictureRequestPtr;
typedef boost::shared_ptr< ::mine_picture::pictureRequest const> pictureRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mine_picture::pictureRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mine_picture::pictureRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::mine_picture::pictureRequest_<ContainerAllocator1> & lhs, const ::mine_picture::pictureRequest_<ContainerAllocator2> & rhs)
{
  return lhs.start == rhs.start;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::mine_picture::pictureRequest_<ContainerAllocator1> & lhs, const ::mine_picture::pictureRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace mine_picture

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::mine_picture::pictureRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mine_picture::pictureRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mine_picture::pictureRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mine_picture::pictureRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mine_picture::pictureRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mine_picture::pictureRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mine_picture::pictureRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "676aa7bfb3ec2071e814f2368dfd5fb5";
  }

  static const char* value(const ::mine_picture::pictureRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x676aa7bfb3ec2071ULL;
  static const uint64_t static_value2 = 0xe814f2368dfd5fb5ULL;
};

template<class ContainerAllocator>
struct DataType< ::mine_picture::pictureRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mine_picture/pictureRequest";
  }

  static const char* value(const ::mine_picture::pictureRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mine_picture::pictureRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool start\n"
;
  }

  static const char* value(const ::mine_picture::pictureRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mine_picture::pictureRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.start);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct pictureRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mine_picture::pictureRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mine_picture::pictureRequest_<ContainerAllocator>& v)
  {
    s << indent << "start: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.start);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MINE_PICTURE_MESSAGE_PICTUREREQUEST_H
