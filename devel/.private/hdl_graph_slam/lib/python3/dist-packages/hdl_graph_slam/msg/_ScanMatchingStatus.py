# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from hdl_graph_slam/ScanMatchingStatus.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg
import std_msgs.msg

class ScanMatchingStatus(genpy.Message):
  _md5sum = "5dc383a1f48a47a0f942e23d17ef4d3d"
  _type = "hdl_graph_slam/ScanMatchingStatus"
  _has_header = True  # flag to mark the presence of a Header object
  _full_text = """Header header

bool has_converged
float32 matching_error
float32 inlier_fraction
geometry_msgs/Pose relative_pose

std_msgs/String[] prediction_labels
geometry_msgs/Pose[] prediction_errors
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
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: std_msgs/String
string data
"""
  __slots__ = ['header','has_converged','matching_error','inlier_fraction','relative_pose','prediction_labels','prediction_errors']
  _slot_types = ['std_msgs/Header','bool','float32','float32','geometry_msgs/Pose','std_msgs/String[]','geometry_msgs/Pose[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,has_converged,matching_error,inlier_fraction,relative_pose,prediction_labels,prediction_errors

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(ScanMatchingStatus, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.has_converged is None:
        self.has_converged = False
      if self.matching_error is None:
        self.matching_error = 0.
      if self.inlier_fraction is None:
        self.inlier_fraction = 0.
      if self.relative_pose is None:
        self.relative_pose = geometry_msgs.msg.Pose()
      if self.prediction_labels is None:
        self.prediction_labels = []
      if self.prediction_errors is None:
        self.prediction_errors = []
    else:
      self.header = std_msgs.msg.Header()
      self.has_converged = False
      self.matching_error = 0.
      self.inlier_fraction = 0.
      self.relative_pose = geometry_msgs.msg.Pose()
      self.prediction_labels = []
      self.prediction_errors = []

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
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_B2f7d().pack(_x.has_converged, _x.matching_error, _x.inlier_fraction, _x.relative_pose.position.x, _x.relative_pose.position.y, _x.relative_pose.position.z, _x.relative_pose.orientation.x, _x.relative_pose.orientation.y, _x.relative_pose.orientation.z, _x.relative_pose.orientation.w))
      length = len(self.prediction_labels)
      buff.write(_struct_I.pack(length))
      for val1 in self.prediction_labels:
        _x = val1.data
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      length = len(self.prediction_errors)
      buff.write(_struct_I.pack(length))
      for val1 in self.prediction_errors:
        _v1 = val1.position
        _x = _v1
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v2 = val1.orientation
        _x = _v2
        buff.write(_get_struct_4d().pack(_x.x, _x.y, _x.z, _x.w))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.relative_pose is None:
        self.relative_pose = geometry_msgs.msg.Pose()
      if self.prediction_labels is None:
        self.prediction_labels = None
      if self.prediction_errors is None:
        self.prediction_errors = None
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
        self.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 65
      (_x.has_converged, _x.matching_error, _x.inlier_fraction, _x.relative_pose.position.x, _x.relative_pose.position.y, _x.relative_pose.position.z, _x.relative_pose.orientation.x, _x.relative_pose.orientation.y, _x.relative_pose.orientation.z, _x.relative_pose.orientation.w,) = _get_struct_B2f7d().unpack(str[start:end])
      self.has_converged = bool(self.has_converged)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.prediction_labels = []
      for i in range(0, length):
        val1 = std_msgs.msg.String()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.data = str[start:end].decode('utf-8', 'rosmsg')
        else:
          val1.data = str[start:end]
        self.prediction_labels.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.prediction_errors = []
      for i in range(0, length):
        val1 = geometry_msgs.msg.Pose()
        _v3 = val1.position
        _x = _v3
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v4 = val1.orientation
        _x = _v4
        start = end
        end += 32
        (_x.x, _x.y, _x.z, _x.w,) = _get_struct_4d().unpack(str[start:end])
        self.prediction_errors.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


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
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_B2f7d().pack(_x.has_converged, _x.matching_error, _x.inlier_fraction, _x.relative_pose.position.x, _x.relative_pose.position.y, _x.relative_pose.position.z, _x.relative_pose.orientation.x, _x.relative_pose.orientation.y, _x.relative_pose.orientation.z, _x.relative_pose.orientation.w))
      length = len(self.prediction_labels)
      buff.write(_struct_I.pack(length))
      for val1 in self.prediction_labels:
        _x = val1.data
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      length = len(self.prediction_errors)
      buff.write(_struct_I.pack(length))
      for val1 in self.prediction_errors:
        _v5 = val1.position
        _x = _v5
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v6 = val1.orientation
        _x = _v6
        buff.write(_get_struct_4d().pack(_x.x, _x.y, _x.z, _x.w))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.relative_pose is None:
        self.relative_pose = geometry_msgs.msg.Pose()
      if self.prediction_labels is None:
        self.prediction_labels = None
      if self.prediction_errors is None:
        self.prediction_errors = None
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
        self.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 65
      (_x.has_converged, _x.matching_error, _x.inlier_fraction, _x.relative_pose.position.x, _x.relative_pose.position.y, _x.relative_pose.position.z, _x.relative_pose.orientation.x, _x.relative_pose.orientation.y, _x.relative_pose.orientation.z, _x.relative_pose.orientation.w,) = _get_struct_B2f7d().unpack(str[start:end])
      self.has_converged = bool(self.has_converged)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.prediction_labels = []
      for i in range(0, length):
        val1 = std_msgs.msg.String()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.data = str[start:end].decode('utf-8', 'rosmsg')
        else:
          val1.data = str[start:end]
        self.prediction_labels.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.prediction_errors = []
      for i in range(0, length):
        val1 = geometry_msgs.msg.Pose()
        _v7 = val1.position
        _x = _v7
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v8 = val1.orientation
        _x = _v8
        start = end
        end += 32
        (_x.x, _x.y, _x.z, _x.w,) = _get_struct_4d().unpack(str[start:end])
        self.prediction_errors.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
_struct_3d = None
def _get_struct_3d():
    global _struct_3d
    if _struct_3d is None:
        _struct_3d = struct.Struct("<3d")
    return _struct_3d
_struct_4d = None
def _get_struct_4d():
    global _struct_4d
    if _struct_4d is None:
        _struct_4d = struct.Struct("<4d")
    return _struct_4d
_struct_B2f7d = None
def _get_struct_B2f7d():
    global _struct_B2f7d
    if _struct_B2f7d is None:
        _struct_B2f7d = struct.Struct("<B2f7d")
    return _struct_B2f7d
