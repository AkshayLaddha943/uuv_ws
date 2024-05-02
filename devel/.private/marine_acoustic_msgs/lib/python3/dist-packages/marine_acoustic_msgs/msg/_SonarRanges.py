# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from marine_acoustic_msgs/SonarRanges.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg
import marine_acoustic_msgs.msg
import std_msgs.msg

class SonarRanges(genpy.Message):
  _md5sum = "be94c27604dc96cadea282ffc5faacb9"
  _type = "marine_acoustic_msgs/SonarRanges"
  _has_header = True  # flag to mark the presence of a Header object
  _full_text = """# Single ping from a profiling sonar.
#
# This message is modeled after WHOI's MultibeamRaw.msg, from the
# ds_multibeam_msgs package (released under a BSD license).
# Modifications were made by UW-APL.

# The header time should be the time the ping was transmitted, not
# the time the message was received.
# Note that these two could potentially be several seconds apart,
# especially in deep water.
std_msgs/Header header

PingInfo ping_info

# Constants declaring whether each beam is good or bad.
# This is implemented as an 8-bit masked value; it is possible for more
# than one thing to flag beams as bad. To check if a beam is good, simply
# check if it is zero.

DetectionFlag[] flags

# Multi-sector multibeams can transmit different sectors at different times
# The Reson doesn't but we include a TX delay for each beam anyway.
#
# Overall, therefore, our overall time is:
#
# header.stamp: TX cycle starts
# Each beam's TX time: header.stamp + txDelay[i]
# Each beam's RX time: header.stamp + txDelay[i] + twowayTravelTime[i]
float32[] transmit_delays

# Sonar-reported intensity.  Usually uncalibrated and crude
float32[] intensities

geometry_msgs/Vector3[] beam_unit_vec

float32[] ranges

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
MSG: marine_acoustic_msgs/PingInfo
# Center frequency of sonar in Hz
# Set to 0 if unavailable
float32 frequency

# Speed of sound (m/s) used to calculate ranges;
# Set to 0 if unavailable
float32 sound_speed

# Sonar reported -3db beamwidths
# May be empty if not reported
# reported in radians
float32[] tx_beamwidths
float32[] rx_beamwidths

================================================================================
MSG: marine_acoustic_msgs/DetectionFlag
# Beam is OK
uint8 DETECT_OK = 0
# Beam is flagged as bad by the sonar.  Think hard before second-guessing
uint8 DETECT_BAD_SONAR = 1
# Beam is flagged as bad by some automated filter applied during processing.
uint8 DETECT_BAD_FILTER = 2
# Beam is flagged as bad by the user. This is probably not happening in
# realtime, but is included here so the same message can be used throughout
# a post-processing pipeline.
uint8 DETECT_BAD_USER = 4

# These arrays should have the same dimensions, and should match
# the number of beams for this sonar.
#
# Some fields are optional.  Those should have 0 length.

# Flag values for every beam
uint8 flag

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z"""
  __slots__ = ['header','ping_info','flags','transmit_delays','intensities','beam_unit_vec','ranges']
  _slot_types = ['std_msgs/Header','marine_acoustic_msgs/PingInfo','marine_acoustic_msgs/DetectionFlag[]','float32[]','float32[]','geometry_msgs/Vector3[]','float32[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,ping_info,flags,transmit_delays,intensities,beam_unit_vec,ranges

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(SonarRanges, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.ping_info is None:
        self.ping_info = marine_acoustic_msgs.msg.PingInfo()
      if self.flags is None:
        self.flags = []
      if self.transmit_delays is None:
        self.transmit_delays = []
      if self.intensities is None:
        self.intensities = []
      if self.beam_unit_vec is None:
        self.beam_unit_vec = []
      if self.ranges is None:
        self.ranges = []
    else:
      self.header = std_msgs.msg.Header()
      self.ping_info = marine_acoustic_msgs.msg.PingInfo()
      self.flags = []
      self.transmit_delays = []
      self.intensities = []
      self.beam_unit_vec = []
      self.ranges = []

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
      buff.write(_get_struct_2f().pack(_x.ping_info.frequency, _x.ping_info.sound_speed))
      length = len(self.ping_info.tx_beamwidths)
      buff.write(_struct_I.pack(length))
      pattern = '<%sf'%length
      buff.write(struct.Struct(pattern).pack(*self.ping_info.tx_beamwidths))
      length = len(self.ping_info.rx_beamwidths)
      buff.write(_struct_I.pack(length))
      pattern = '<%sf'%length
      buff.write(struct.Struct(pattern).pack(*self.ping_info.rx_beamwidths))
      length = len(self.flags)
      buff.write(_struct_I.pack(length))
      for val1 in self.flags:
        _x = val1.flag
        buff.write(_get_struct_B().pack(_x))
      length = len(self.transmit_delays)
      buff.write(_struct_I.pack(length))
      pattern = '<%sf'%length
      buff.write(struct.Struct(pattern).pack(*self.transmit_delays))
      length = len(self.intensities)
      buff.write(_struct_I.pack(length))
      pattern = '<%sf'%length
      buff.write(struct.Struct(pattern).pack(*self.intensities))
      length = len(self.beam_unit_vec)
      buff.write(_struct_I.pack(length))
      for val1 in self.beam_unit_vec:
        _x = val1
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
      length = len(self.ranges)
      buff.write(_struct_I.pack(length))
      pattern = '<%sf'%length
      buff.write(struct.Struct(pattern).pack(*self.ranges))
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
      if self.ping_info is None:
        self.ping_info = marine_acoustic_msgs.msg.PingInfo()
      if self.flags is None:
        self.flags = None
      if self.beam_unit_vec is None:
        self.beam_unit_vec = None
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
      end += 8
      (_x.ping_info.frequency, _x.ping_info.sound_speed,) = _get_struct_2f().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sf'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.ping_info.tx_beamwidths = s.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sf'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.ping_info.rx_beamwidths = s.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.flags = []
      for i in range(0, length):
        val1 = marine_acoustic_msgs.msg.DetectionFlag()
        start = end
        end += 1
        (val1.flag,) = _get_struct_B().unpack(str[start:end])
        self.flags.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sf'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.transmit_delays = s.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sf'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.intensities = s.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.beam_unit_vec = []
      for i in range(0, length):
        val1 = geometry_msgs.msg.Vector3()
        _x = val1
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        self.beam_unit_vec.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sf'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.ranges = s.unpack(str[start:end])
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
      buff.write(_get_struct_2f().pack(_x.ping_info.frequency, _x.ping_info.sound_speed))
      length = len(self.ping_info.tx_beamwidths)
      buff.write(_struct_I.pack(length))
      pattern = '<%sf'%length
      buff.write(self.ping_info.tx_beamwidths.tostring())
      length = len(self.ping_info.rx_beamwidths)
      buff.write(_struct_I.pack(length))
      pattern = '<%sf'%length
      buff.write(self.ping_info.rx_beamwidths.tostring())
      length = len(self.flags)
      buff.write(_struct_I.pack(length))
      for val1 in self.flags:
        _x = val1.flag
        buff.write(_get_struct_B().pack(_x))
      length = len(self.transmit_delays)
      buff.write(_struct_I.pack(length))
      pattern = '<%sf'%length
      buff.write(self.transmit_delays.tostring())
      length = len(self.intensities)
      buff.write(_struct_I.pack(length))
      pattern = '<%sf'%length
      buff.write(self.intensities.tostring())
      length = len(self.beam_unit_vec)
      buff.write(_struct_I.pack(length))
      for val1 in self.beam_unit_vec:
        _x = val1
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
      length = len(self.ranges)
      buff.write(_struct_I.pack(length))
      pattern = '<%sf'%length
      buff.write(self.ranges.tostring())
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
      if self.ping_info is None:
        self.ping_info = marine_acoustic_msgs.msg.PingInfo()
      if self.flags is None:
        self.flags = None
      if self.beam_unit_vec is None:
        self.beam_unit_vec = None
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
      end += 8
      (_x.ping_info.frequency, _x.ping_info.sound_speed,) = _get_struct_2f().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sf'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.ping_info.tx_beamwidths = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=length)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sf'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.ping_info.rx_beamwidths = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=length)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.flags = []
      for i in range(0, length):
        val1 = marine_acoustic_msgs.msg.DetectionFlag()
        start = end
        end += 1
        (val1.flag,) = _get_struct_B().unpack(str[start:end])
        self.flags.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sf'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.transmit_delays = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=length)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sf'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.intensities = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=length)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.beam_unit_vec = []
      for i in range(0, length):
        val1 = geometry_msgs.msg.Vector3()
        _x = val1
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        self.beam_unit_vec.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sf'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.ranges = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=length)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2f = None
def _get_struct_2f():
    global _struct_2f
    if _struct_2f is None:
        _struct_2f = struct.Struct("<2f")
    return _struct_2f
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
_struct_B = None
def _get_struct_B():
    global _struct_B
    if _struct_B is None:
        _struct_B = struct.Struct("<B")
    return _struct_B
