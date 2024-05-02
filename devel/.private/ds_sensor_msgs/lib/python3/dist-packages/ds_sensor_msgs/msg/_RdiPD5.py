# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from ds_sensor_msgs/RdiPD5.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import ds_core_msgs.msg
import genpy
import std_msgs.msg

class RdiPD5(genpy.Message):
  _md5sum = "55e9b7b226954be00690cf16366fbd41"
  _type = "ds_sensor_msgs/RdiPD5"
  _has_header = True  # flag to mark the presence of a Header object
  _full_text = """# The standard 2-part DsHeader block
# This allows both a standard ROS header and DS-specific header blocks
# See HEADERS.md in ds_core_msgs for details
std_msgs/Header header
ds_core_msgs/DsHeader ds_header

################################
# Standard DVL type disclaimer #
################################

# Standard array with one piston transducer for each beam
# If you have 4-5 individual disks on your DVL, use this one.
# Examples include Sonardyne Syrinx, Nortek DVLs, and RDI Workhorse
uint8 DVL_TYPE_PISTON=0

# Newfangled phased-array DVL.  If you have one giant disk with complicated stuff on it,
# probably this one.
# Examples include newer RDI DVLs such as pathfinder, pioneer, and tasman.
uint8 DVL_TYPE_PHASED_ARRAY=1

# Type of DVL array employed (see above).  Necessary when
# deciding how to apply sound velocity corrections
uint8 dvl_type

#################
# DVL processed #
#################

float64 altitude_sum
float64 speed_gnd
float64 course_gnd
uint8 good_beams
float64 dvl_time

#################
# Raw Data      #
#################

uint8 config
uint8 coord_mode
float64[4] velocity
float64[4] range
uint8 bottom_status
float64[4] layer_velocity
float64 ref_layer_start
float64 ref_layer_end
uint8 ref_layer_status
uint8 tofp_hour
uint8 tofp_minute
uint8 tofp_second
uint8 tofp_hundreths
uint16 bit_results
uint32 sound_vel
float64 temperature
float64 salinity
float64 depth
float64 pitch
float64 roll
float64 heading
uint32 bt_distance_east
uint32 bt_distance_north
uint32 bt_distance_up
uint32 bt_distance_error
uint32 ref_distance_east
uint32 ref_distance_north
uint32 ref_distance_up
uint32 ref_distance_error


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
MSG: ds_core_msgs/DsHeader
# This is half our standard header for ds_msgs; see
# HEADERS.md for details

# This header should ALWAYS be paired with a std_msgs/Header
# and should ALWAYS reference HEADERS.md.  If you're looking at this
# file to add headers to a type, you probably want to copy/paste
# the following block:
#
#     # The standard 2-part DsHeader block
#     # This allows both a standard ROS header and DS-specific header blocks
#     # See HEADERS.md in ds_core_msgs for details
#     std_msgs/Header header
#     ds_core_msgs/DsHeader ds_header
#

# Time data was received or sent out (i/o time)
time io_time

# Sensor source UUID
uint8[16] source_uuid

"""
  # Pseudo-constants
  DVL_TYPE_PISTON = 0
  DVL_TYPE_PHASED_ARRAY = 1

  __slots__ = ['header','ds_header','dvl_type','altitude_sum','speed_gnd','course_gnd','good_beams','dvl_time','config','coord_mode','velocity','range','bottom_status','layer_velocity','ref_layer_start','ref_layer_end','ref_layer_status','tofp_hour','tofp_minute','tofp_second','tofp_hundreths','bit_results','sound_vel','temperature','salinity','depth','pitch','roll','heading','bt_distance_east','bt_distance_north','bt_distance_up','bt_distance_error','ref_distance_east','ref_distance_north','ref_distance_up','ref_distance_error']
  _slot_types = ['std_msgs/Header','ds_core_msgs/DsHeader','uint8','float64','float64','float64','uint8','float64','uint8','uint8','float64[4]','float64[4]','uint8','float64[4]','float64','float64','uint8','uint8','uint8','uint8','uint8','uint16','uint32','float64','float64','float64','float64','float64','float64','uint32','uint32','uint32','uint32','uint32','uint32','uint32','uint32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,ds_header,dvl_type,altitude_sum,speed_gnd,course_gnd,good_beams,dvl_time,config,coord_mode,velocity,range,bottom_status,layer_velocity,ref_layer_start,ref_layer_end,ref_layer_status,tofp_hour,tofp_minute,tofp_second,tofp_hundreths,bit_results,sound_vel,temperature,salinity,depth,pitch,roll,heading,bt_distance_east,bt_distance_north,bt_distance_up,bt_distance_error,ref_distance_east,ref_distance_north,ref_distance_up,ref_distance_error

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(RdiPD5, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.ds_header is None:
        self.ds_header = ds_core_msgs.msg.DsHeader()
      if self.dvl_type is None:
        self.dvl_type = 0
      if self.altitude_sum is None:
        self.altitude_sum = 0.
      if self.speed_gnd is None:
        self.speed_gnd = 0.
      if self.course_gnd is None:
        self.course_gnd = 0.
      if self.good_beams is None:
        self.good_beams = 0
      if self.dvl_time is None:
        self.dvl_time = 0.
      if self.config is None:
        self.config = 0
      if self.coord_mode is None:
        self.coord_mode = 0
      if self.velocity is None:
        self.velocity = [0.] * 4
      if self.range is None:
        self.range = [0.] * 4
      if self.bottom_status is None:
        self.bottom_status = 0
      if self.layer_velocity is None:
        self.layer_velocity = [0.] * 4
      if self.ref_layer_start is None:
        self.ref_layer_start = 0.
      if self.ref_layer_end is None:
        self.ref_layer_end = 0.
      if self.ref_layer_status is None:
        self.ref_layer_status = 0
      if self.tofp_hour is None:
        self.tofp_hour = 0
      if self.tofp_minute is None:
        self.tofp_minute = 0
      if self.tofp_second is None:
        self.tofp_second = 0
      if self.tofp_hundreths is None:
        self.tofp_hundreths = 0
      if self.bit_results is None:
        self.bit_results = 0
      if self.sound_vel is None:
        self.sound_vel = 0
      if self.temperature is None:
        self.temperature = 0.
      if self.salinity is None:
        self.salinity = 0.
      if self.depth is None:
        self.depth = 0.
      if self.pitch is None:
        self.pitch = 0.
      if self.roll is None:
        self.roll = 0.
      if self.heading is None:
        self.heading = 0.
      if self.bt_distance_east is None:
        self.bt_distance_east = 0
      if self.bt_distance_north is None:
        self.bt_distance_north = 0
      if self.bt_distance_up is None:
        self.bt_distance_up = 0
      if self.bt_distance_error is None:
        self.bt_distance_error = 0
      if self.ref_distance_east is None:
        self.ref_distance_east = 0
      if self.ref_distance_north is None:
        self.ref_distance_north = 0
      if self.ref_distance_up is None:
        self.ref_distance_up = 0
      if self.ref_distance_error is None:
        self.ref_distance_error = 0
    else:
      self.header = std_msgs.msg.Header()
      self.ds_header = ds_core_msgs.msg.DsHeader()
      self.dvl_type = 0
      self.altitude_sum = 0.
      self.speed_gnd = 0.
      self.course_gnd = 0.
      self.good_beams = 0
      self.dvl_time = 0.
      self.config = 0
      self.coord_mode = 0
      self.velocity = [0.] * 4
      self.range = [0.] * 4
      self.bottom_status = 0
      self.layer_velocity = [0.] * 4
      self.ref_layer_start = 0.
      self.ref_layer_end = 0.
      self.ref_layer_status = 0
      self.tofp_hour = 0
      self.tofp_minute = 0
      self.tofp_second = 0
      self.tofp_hundreths = 0
      self.bit_results = 0
      self.sound_vel = 0
      self.temperature = 0.
      self.salinity = 0.
      self.depth = 0.
      self.pitch = 0.
      self.roll = 0.
      self.heading = 0.
      self.bt_distance_east = 0
      self.bt_distance_north = 0
      self.bt_distance_up = 0
      self.bt_distance_error = 0
      self.ref_distance_east = 0
      self.ref_distance_north = 0
      self.ref_distance_up = 0
      self.ref_distance_error = 0

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
      buff.write(_get_struct_2I().pack(_x.ds_header.io_time.secs, _x.ds_header.io_time.nsecs))
      _x = self.ds_header.source_uuid
      # - if encoded as a list instead, serialize as bytes instead of string
      if type(_x) in [list, tuple]:
        buff.write(_get_struct_16B().pack(*_x))
      else:
        buff.write(_get_struct_16s().pack(_x))
      _x = self
      buff.write(_get_struct_B3dBd2B().pack(_x.dvl_type, _x.altitude_sum, _x.speed_gnd, _x.course_gnd, _x.good_beams, _x.dvl_time, _x.config, _x.coord_mode))
      buff.write(_get_struct_4d().pack(*self.velocity))
      buff.write(_get_struct_4d().pack(*self.range))
      _x = self.bottom_status
      buff.write(_get_struct_B().pack(_x))
      buff.write(_get_struct_4d().pack(*self.layer_velocity))
      _x = self
      buff.write(_get_struct_2d5BHI6d8I().pack(_x.ref_layer_start, _x.ref_layer_end, _x.ref_layer_status, _x.tofp_hour, _x.tofp_minute, _x.tofp_second, _x.tofp_hundreths, _x.bit_results, _x.sound_vel, _x.temperature, _x.salinity, _x.depth, _x.pitch, _x.roll, _x.heading, _x.bt_distance_east, _x.bt_distance_north, _x.bt_distance_up, _x.bt_distance_error, _x.ref_distance_east, _x.ref_distance_north, _x.ref_distance_up, _x.ref_distance_error))
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
      if self.ds_header is None:
        self.ds_header = ds_core_msgs.msg.DsHeader()
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
      (_x.ds_header.io_time.secs, _x.ds_header.io_time.nsecs,) = _get_struct_2I().unpack(str[start:end])
      start = end
      end += 16
      self.ds_header.source_uuid = str[start:end]
      _x = self
      start = end
      end += 36
      (_x.dvl_type, _x.altitude_sum, _x.speed_gnd, _x.course_gnd, _x.good_beams, _x.dvl_time, _x.config, _x.coord_mode,) = _get_struct_B3dBd2B().unpack(str[start:end])
      start = end
      end += 32
      self.velocity = _get_struct_4d().unpack(str[start:end])
      start = end
      end += 32
      self.range = _get_struct_4d().unpack(str[start:end])
      start = end
      end += 1
      (self.bottom_status,) = _get_struct_B().unpack(str[start:end])
      start = end
      end += 32
      self.layer_velocity = _get_struct_4d().unpack(str[start:end])
      _x = self
      start = end
      end += 107
      (_x.ref_layer_start, _x.ref_layer_end, _x.ref_layer_status, _x.tofp_hour, _x.tofp_minute, _x.tofp_second, _x.tofp_hundreths, _x.bit_results, _x.sound_vel, _x.temperature, _x.salinity, _x.depth, _x.pitch, _x.roll, _x.heading, _x.bt_distance_east, _x.bt_distance_north, _x.bt_distance_up, _x.bt_distance_error, _x.ref_distance_east, _x.ref_distance_north, _x.ref_distance_up, _x.ref_distance_error,) = _get_struct_2d5BHI6d8I().unpack(str[start:end])
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
      buff.write(_get_struct_2I().pack(_x.ds_header.io_time.secs, _x.ds_header.io_time.nsecs))
      _x = self.ds_header.source_uuid
      # - if encoded as a list instead, serialize as bytes instead of string
      if type(_x) in [list, tuple]:
        buff.write(_get_struct_16B().pack(*_x))
      else:
        buff.write(_get_struct_16s().pack(_x))
      _x = self
      buff.write(_get_struct_B3dBd2B().pack(_x.dvl_type, _x.altitude_sum, _x.speed_gnd, _x.course_gnd, _x.good_beams, _x.dvl_time, _x.config, _x.coord_mode))
      buff.write(self.velocity.tostring())
      buff.write(self.range.tostring())
      _x = self.bottom_status
      buff.write(_get_struct_B().pack(_x))
      buff.write(self.layer_velocity.tostring())
      _x = self
      buff.write(_get_struct_2d5BHI6d8I().pack(_x.ref_layer_start, _x.ref_layer_end, _x.ref_layer_status, _x.tofp_hour, _x.tofp_minute, _x.tofp_second, _x.tofp_hundreths, _x.bit_results, _x.sound_vel, _x.temperature, _x.salinity, _x.depth, _x.pitch, _x.roll, _x.heading, _x.bt_distance_east, _x.bt_distance_north, _x.bt_distance_up, _x.bt_distance_error, _x.ref_distance_east, _x.ref_distance_north, _x.ref_distance_up, _x.ref_distance_error))
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
      if self.ds_header is None:
        self.ds_header = ds_core_msgs.msg.DsHeader()
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
      (_x.ds_header.io_time.secs, _x.ds_header.io_time.nsecs,) = _get_struct_2I().unpack(str[start:end])
      start = end
      end += 16
      self.ds_header.source_uuid = str[start:end]
      _x = self
      start = end
      end += 36
      (_x.dvl_type, _x.altitude_sum, _x.speed_gnd, _x.course_gnd, _x.good_beams, _x.dvl_time, _x.config, _x.coord_mode,) = _get_struct_B3dBd2B().unpack(str[start:end])
      start = end
      end += 32
      self.velocity = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=4)
      start = end
      end += 32
      self.range = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=4)
      start = end
      end += 1
      (self.bottom_status,) = _get_struct_B().unpack(str[start:end])
      start = end
      end += 32
      self.layer_velocity = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=4)
      _x = self
      start = end
      end += 107
      (_x.ref_layer_start, _x.ref_layer_end, _x.ref_layer_status, _x.tofp_hour, _x.tofp_minute, _x.tofp_second, _x.tofp_hundreths, _x.bit_results, _x.sound_vel, _x.temperature, _x.salinity, _x.depth, _x.pitch, _x.roll, _x.heading, _x.bt_distance_east, _x.bt_distance_north, _x.bt_distance_up, _x.bt_distance_error, _x.ref_distance_east, _x.ref_distance_north, _x.ref_distance_up, _x.ref_distance_error,) = _get_struct_2d5BHI6d8I().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_16B = None
def _get_struct_16B():
    global _struct_16B
    if _struct_16B is None:
        _struct_16B = struct.Struct("<16B")
    return _struct_16B
_struct_16s = None
def _get_struct_16s():
    global _struct_16s
    if _struct_16s is None:
        _struct_16s = struct.Struct("<16s")
    return _struct_16s
_struct_2I = None
def _get_struct_2I():
    global _struct_2I
    if _struct_2I is None:
        _struct_2I = struct.Struct("<2I")
    return _struct_2I
_struct_2d5BHI6d8I = None
def _get_struct_2d5BHI6d8I():
    global _struct_2d5BHI6d8I
    if _struct_2d5BHI6d8I is None:
        _struct_2d5BHI6d8I = struct.Struct("<2d5BHI6d8I")
    return _struct_2d5BHI6d8I
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
_struct_4d = None
def _get_struct_4d():
    global _struct_4d
    if _struct_4d is None:
        _struct_4d = struct.Struct("<4d")
    return _struct_4d
_struct_B = None
def _get_struct_B():
    global _struct_B
    if _struct_B is None:
        _struct_B = struct.Struct("<B")
    return _struct_B
_struct_B3dBd2B = None
def _get_struct_B3dBd2B():
    global _struct_B3dBd2B
    if _struct_B3dBd2B is None:
        _struct_B3dBd2B = struct.Struct("<B3dBd2B")
    return _struct_B3dBd2B
