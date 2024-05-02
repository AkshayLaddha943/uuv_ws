// Auto-generated. Do not edit!

// (in-package marine_sensor_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let RadarEcho = require('./RadarEcho.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class RadarSector {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.angle_start = null;
      this.angle_increment = null;
      this.time_increment = null;
      this.scan_time = null;
      this.range_min = null;
      this.range_max = null;
      this.intensities = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('angle_start')) {
        this.angle_start = initObj.angle_start
      }
      else {
        this.angle_start = 0.0;
      }
      if (initObj.hasOwnProperty('angle_increment')) {
        this.angle_increment = initObj.angle_increment
      }
      else {
        this.angle_increment = 0.0;
      }
      if (initObj.hasOwnProperty('time_increment')) {
        this.time_increment = initObj.time_increment
      }
      else {
        this.time_increment = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('scan_time')) {
        this.scan_time = initObj.scan_time
      }
      else {
        this.scan_time = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('range_min')) {
        this.range_min = initObj.range_min
      }
      else {
        this.range_min = 0.0;
      }
      if (initObj.hasOwnProperty('range_max')) {
        this.range_max = initObj.range_max
      }
      else {
        this.range_max = 0.0;
      }
      if (initObj.hasOwnProperty('intensities')) {
        this.intensities = initObj.intensities
      }
      else {
        this.intensities = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RadarSector
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [angle_start]
    bufferOffset = _serializer.float32(obj.angle_start, buffer, bufferOffset);
    // Serialize message field [angle_increment]
    bufferOffset = _serializer.float32(obj.angle_increment, buffer, bufferOffset);
    // Serialize message field [time_increment]
    bufferOffset = _serializer.duration(obj.time_increment, buffer, bufferOffset);
    // Serialize message field [scan_time]
    bufferOffset = _serializer.duration(obj.scan_time, buffer, bufferOffset);
    // Serialize message field [range_min]
    bufferOffset = _serializer.float32(obj.range_min, buffer, bufferOffset);
    // Serialize message field [range_max]
    bufferOffset = _serializer.float32(obj.range_max, buffer, bufferOffset);
    // Serialize message field [intensities]
    // Serialize the length for message field [intensities]
    bufferOffset = _serializer.uint32(obj.intensities.length, buffer, bufferOffset);
    obj.intensities.forEach((val) => {
      bufferOffset = RadarEcho.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RadarSector
    let len;
    let data = new RadarSector(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [angle_start]
    data.angle_start = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [angle_increment]
    data.angle_increment = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [time_increment]
    data.time_increment = _deserializer.duration(buffer, bufferOffset);
    // Deserialize message field [scan_time]
    data.scan_time = _deserializer.duration(buffer, bufferOffset);
    // Deserialize message field [range_min]
    data.range_min = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [range_max]
    data.range_max = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [intensities]
    // Deserialize array length for message field [intensities]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.intensities = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.intensities[i] = RadarEcho.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.intensities.forEach((val) => {
      length += RadarEcho.getMessageSize(val);
    });
    return length + 36;
  }

  static datatype() {
    // Returns string type for a message object
    return 'marine_sensor_msgs/RadarSector';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'df60b1c17b5e9990cfefd1e37ab4e5a8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # A collection of marine radar rays, typically covering a contiguous
    # arc of a full circle.
    
    # timestamp in the header is the acquisition time of
    # the first ray in the sector.
    #
    # In frame frame_id, angles are measured around
    # the positive Z axis (counterclockwise, if Z is up)
    # with zero angle being forward along the X axis
    Header header
    
    # start angle of this sector [rad]
    float32 angle_start
    
    # angular distance between rays [rad]
    float32 angle_increment
    
    # time between rays [seconds] - if your scanner
    # is moving, this can be used in interpolating
    # position of 3d points
    duration time_increment
    
    # time between two consecutive complete scans
    # or revolutions [seconds]
    # Warning: On hardware that doesn't provide a timestamp,
    # time-related fields may be estimated and vary
    # from sector to sector as estimates are updated
    duration scan_time
    
    # range of the first sample in each ray [m]
    float32 range_min
    
    # range of the last sample in each ray [m]
    float32 range_max
    
    # intensity data [device-specific units].
    RadarEcho[] intensities
    
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
    MSG: marine_sensor_msgs/RadarEcho
    # This message is a submessage of RadarSector and is not intended
    # to be used separately. It represents intensities from a
    # single ray.
    
    # Series of intensities from closest to farthest
    # along a given angle increment. [device-specific units]
    float32[] echoes
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RadarSector(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.angle_start !== undefined) {
      resolved.angle_start = msg.angle_start;
    }
    else {
      resolved.angle_start = 0.0
    }

    if (msg.angle_increment !== undefined) {
      resolved.angle_increment = msg.angle_increment;
    }
    else {
      resolved.angle_increment = 0.0
    }

    if (msg.time_increment !== undefined) {
      resolved.time_increment = msg.time_increment;
    }
    else {
      resolved.time_increment = {secs: 0, nsecs: 0}
    }

    if (msg.scan_time !== undefined) {
      resolved.scan_time = msg.scan_time;
    }
    else {
      resolved.scan_time = {secs: 0, nsecs: 0}
    }

    if (msg.range_min !== undefined) {
      resolved.range_min = msg.range_min;
    }
    else {
      resolved.range_min = 0.0
    }

    if (msg.range_max !== undefined) {
      resolved.range_max = msg.range_max;
    }
    else {
      resolved.range_max = 0.0
    }

    if (msg.intensities !== undefined) {
      resolved.intensities = new Array(msg.intensities.length);
      for (let i = 0; i < resolved.intensities.length; ++i) {
        resolved.intensities[i] = RadarEcho.Resolve(msg.intensities[i]);
      }
    }
    else {
      resolved.intensities = []
    }

    return resolved;
    }
};

module.exports = RadarSector;
