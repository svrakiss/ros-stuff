# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from vision_msgs/Classification3D.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import vision_msgs.msg
import std_msgs.msg
import sensor_msgs.msg

class Classification3D(genpy.Message):
  _md5sum = "2c0fe97799b60ee2995363b3fbf44715"
  _type = "vision_msgs/Classification3D"
  _has_header = True #flag to mark the presence of a Header object
  _full_text = """# Defines a 3D classification result.
#
# This result does not contain any position information. It is designed for
#   classifiers, which simply provide probabilities given a source image.

Header header

# Class probabilities
ObjectHypothesis[] results

# The 3D data that generated these results (i.e. region proposal cropped out of
#   the image). Not required for all detectors, so it may be empty.
sensor_msgs/PointCloud2 source_cloud
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: vision_msgs/ObjectHypothesis
# An object hypothesis that contains no position information.

# The unique numeric ID of object detected. To get additional information about
#   this ID, such as its human-readable name, listeners should perform a lookup
#   in a metadata database. See vision_msgs/VisionInfo.msg for more detail.
int64 id

# The probability or confidence value of the detected object. By convention,
#   this value should lie in the range [0-1].
float64 score
================================================================================
MSG: sensor_msgs/PointCloud2
# This message holds a collection of N-dimensional points, which may
# contain additional information such as normals, intensity, etc. The
# point data is stored as a binary blob, its layout described by the
# contents of the "fields" array.

# The point cloud data may be organized 2d (image-like) or 1d
# (unordered). Point clouds organized as 2d images may be produced by
# camera depth sensors such as stereo or time-of-flight.

# Time of sensor data acquisition, and the coordinate frame ID (for 3d
# points).
Header header

# 2D structure of the point cloud. If the cloud is unordered, height is
# 1 and width is the length of the point cloud.
uint32 height
uint32 width

# Describes the channels and their layout in the binary data blob.
PointField[] fields

bool    is_bigendian # Is this data bigendian?
uint32  point_step   # Length of a point in bytes
uint32  row_step     # Length of a row in bytes
uint8[] data         # Actual point data, size is (row_step*height)

bool is_dense        # True if there are no invalid points

================================================================================
MSG: sensor_msgs/PointField
# This message holds the description of one point entry in the
# PointCloud2 message format.
uint8 INT8    = 1
uint8 UINT8   = 2
uint8 INT16   = 3
uint8 UINT16  = 4
uint8 INT32   = 5
uint8 UINT32  = 6
uint8 FLOAT32 = 7
uint8 FLOAT64 = 8

string name      # Name of field
uint32 offset    # Offset from start of point struct
uint8  datatype  # Datatype enumeration, see above
uint32 count     # How many elements in the field
"""
  __slots__ = ['header','results','source_cloud']
  _slot_types = ['std_msgs/Header','vision_msgs/ObjectHypothesis[]','sensor_msgs/PointCloud2']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,results,source_cloud

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(Classification3D, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.results is None:
        self.results = []
      if self.source_cloud is None:
        self.source_cloud = sensor_msgs.msg.PointCloud2()
    else:
      self.header = std_msgs.msg.Header()
      self.results = []
      self.source_cloud = sensor_msgs.msg.PointCloud2()

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      length = len(self.results)
      buff.write(_struct_I.pack(length))
      for val1 in self.results:
        _x = val1
        buff.write(_get_struct_qd().pack(_x.id, _x.score))
      _x = self
      buff.write(_get_struct_3I().pack(_x.source_cloud.header.seq, _x.source_cloud.header.stamp.secs, _x.source_cloud.header.stamp.nsecs))
      _x = self.source_cloud.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_2I().pack(_x.source_cloud.height, _x.source_cloud.width))
      length = len(self.source_cloud.fields)
      buff.write(_struct_I.pack(length))
      for val1 in self.source_cloud.fields:
        _x = val1.name
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.pack('<I%ss'%length, length, _x))
        _x = val1
        buff.write(_get_struct_IBI().pack(_x.offset, _x.datatype, _x.count))
      _x = self
      buff.write(_get_struct_B2I().pack(_x.source_cloud.is_bigendian, _x.source_cloud.point_step, _x.source_cloud.row_step))
      _x = self.source_cloud.data
      length = len(_x)
      # - if encoded as a list instead, serialize as bytes instead of string
      if type(_x) in [list, tuple]:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      buff.write(_get_struct_B().pack(self.source_cloud.is_dense))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.results is None:
        self.results = None
      if self.source_cloud is None:
        self.source_cloud = sensor_msgs.msg.PointCloud2()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.header.frame_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.results = []
      for i in range(0, length):
        val1 = vision_msgs.msg.ObjectHypothesis()
        _x = val1
        start = end
        end += 16
        (_x.id, _x.score,) = _get_struct_qd().unpack(str[start:end])
        self.results.append(val1)
      _x = self
      start = end
      end += 12
      (_x.source_cloud.header.seq, _x.source_cloud.header.stamp.secs, _x.source_cloud.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.source_cloud.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.source_cloud.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 8
      (_x.source_cloud.height, _x.source_cloud.width,) = _get_struct_2I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.source_cloud.fields = []
      for i in range(0, length):
        val1 = sensor_msgs.msg.PointField()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.name = str[start:end].decode('utf-8')
        else:
          val1.name = str[start:end]
        _x = val1
        start = end
        end += 9
        (_x.offset, _x.datatype, _x.count,) = _get_struct_IBI().unpack(str[start:end])
        self.source_cloud.fields.append(val1)
      _x = self
      start = end
      end += 9
      (_x.source_cloud.is_bigendian, _x.source_cloud.point_step, _x.source_cloud.row_step,) = _get_struct_B2I().unpack(str[start:end])
      self.source_cloud.is_bigendian = bool(self.source_cloud.is_bigendian)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      self.source_cloud.data = str[start:end]
      start = end
      end += 1
      (self.source_cloud.is_dense,) = _get_struct_B().unpack(str[start:end])
      self.source_cloud.is_dense = bool(self.source_cloud.is_dense)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      length = len(self.results)
      buff.write(_struct_I.pack(length))
      for val1 in self.results:
        _x = val1
        buff.write(_get_struct_qd().pack(_x.id, _x.score))
      _x = self
      buff.write(_get_struct_3I().pack(_x.source_cloud.header.seq, _x.source_cloud.header.stamp.secs, _x.source_cloud.header.stamp.nsecs))
      _x = self.source_cloud.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_2I().pack(_x.source_cloud.height, _x.source_cloud.width))
      length = len(self.source_cloud.fields)
      buff.write(_struct_I.pack(length))
      for val1 in self.source_cloud.fields:
        _x = val1.name
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.pack('<I%ss'%length, length, _x))
        _x = val1
        buff.write(_get_struct_IBI().pack(_x.offset, _x.datatype, _x.count))
      _x = self
      buff.write(_get_struct_B2I().pack(_x.source_cloud.is_bigendian, _x.source_cloud.point_step, _x.source_cloud.row_step))
      _x = self.source_cloud.data
      length = len(_x)
      # - if encoded as a list instead, serialize as bytes instead of string
      if type(_x) in [list, tuple]:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      buff.write(_get_struct_B().pack(self.source_cloud.is_dense))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.results is None:
        self.results = None
      if self.source_cloud is None:
        self.source_cloud = sensor_msgs.msg.PointCloud2()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.header.frame_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.results = []
      for i in range(0, length):
        val1 = vision_msgs.msg.ObjectHypothesis()
        _x = val1
        start = end
        end += 16
        (_x.id, _x.score,) = _get_struct_qd().unpack(str[start:end])
        self.results.append(val1)
      _x = self
      start = end
      end += 12
      (_x.source_cloud.header.seq, _x.source_cloud.header.stamp.secs, _x.source_cloud.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.source_cloud.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.source_cloud.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 8
      (_x.source_cloud.height, _x.source_cloud.width,) = _get_struct_2I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.source_cloud.fields = []
      for i in range(0, length):
        val1 = sensor_msgs.msg.PointField()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.name = str[start:end].decode('utf-8')
        else:
          val1.name = str[start:end]
        _x = val1
        start = end
        end += 9
        (_x.offset, _x.datatype, _x.count,) = _get_struct_IBI().unpack(str[start:end])
        self.source_cloud.fields.append(val1)
      _x = self
      start = end
      end += 9
      (_x.source_cloud.is_bigendian, _x.source_cloud.point_step, _x.source_cloud.row_step,) = _get_struct_B2I().unpack(str[start:end])
      self.source_cloud.is_bigendian = bool(self.source_cloud.is_bigendian)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      self.source_cloud.data = str[start:end]
      start = end
      end += 1
      (self.source_cloud.is_dense,) = _get_struct_B().unpack(str[start:end])
      self.source_cloud.is_dense = bool(self.source_cloud.is_dense)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_qd = None
def _get_struct_qd():
    global _struct_qd
    if _struct_qd is None:
        _struct_qd = struct.Struct("<qd")
    return _struct_qd
_struct_IBI = None
def _get_struct_IBI():
    global _struct_IBI
    if _struct_IBI is None:
        _struct_IBI = struct.Struct("<IBI")
    return _struct_IBI
_struct_2I = None
def _get_struct_2I():
    global _struct_2I
    if _struct_2I is None:
        _struct_2I = struct.Struct("<2I")
    return _struct_2I
_struct_B2I = None
def _get_struct_B2I():
    global _struct_B2I
    if _struct_B2I is None:
        _struct_B2I = struct.Struct("<B2I")
    return _struct_B2I
_struct_B = None
def _get_struct_B():
    global _struct_B
    if _struct_B is None:
        _struct_B = struct.Struct("<B")
    return _struct_B
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
