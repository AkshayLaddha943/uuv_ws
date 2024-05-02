// Auto-generated. Do not edit!

// (in-package sonar_oculus.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let OculusFire = require('./OculusFire.js');
let sensor_msgs = _finder('sensor_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class OculusPing {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.fire_msg = null;
      this.ping_id = null;
      this.part_number = null;
      this.start_time = null;
      this.bearings = null;
      this.range_resolution = null;
      this.num_ranges = null;
      this.num_beams = null;
      this.ping = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('fire_msg')) {
        this.fire_msg = initObj.fire_msg
      }
      else {
        this.fire_msg = new OculusFire();
      }
      if (initObj.hasOwnProperty('ping_id')) {
        this.ping_id = initObj.ping_id
      }
      else {
        this.ping_id = 0;
      }
      if (initObj.hasOwnProperty('part_number')) {
        this.part_number = initObj.part_number
      }
      else {
        this.part_number = 0;
      }
      if (initObj.hasOwnProperty('start_time')) {
        this.start_time = initObj.start_time
      }
      else {
        this.start_time = 0;
      }
      if (initObj.hasOwnProperty('bearings')) {
        this.bearings = initObj.bearings
      }
      else {
        this.bearings = [];
      }
      if (initObj.hasOwnProperty('range_resolution')) {
        this.range_resolution = initObj.range_resolution
      }
      else {
        this.range_resolution = 0.0;
      }
      if (initObj.hasOwnProperty('num_ranges')) {
        this.num_ranges = initObj.num_ranges
      }
      else {
        this.num_ranges = 0;
      }
      if (initObj.hasOwnProperty('num_beams')) {
        this.num_beams = initObj.num_beams
      }
      else {
        this.num_beams = 0;
      }
      if (initObj.hasOwnProperty('ping')) {
        this.ping = initObj.ping
      }
      else {
        this.ping = new sensor_msgs.msg.CompressedImage();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type OculusPing
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [fire_msg]
    bufferOffset = OculusFire.serialize(obj.fire_msg, buffer, bufferOffset);
    // Serialize message field [ping_id]
    bufferOffset = _serializer.uint32(obj.ping_id, buffer, bufferOffset);
    // Serialize message field [part_number]
    bufferOffset = _serializer.uint16(obj.part_number, buffer, bufferOffset);
    // Serialize message field [start_time]
    bufferOffset = _serializer.uint32(obj.start_time, buffer, bufferOffset);
    // Serialize message field [bearings]
    bufferOffset = _arraySerializer.int16(obj.bearings, buffer, bufferOffset, null);
    // Serialize message field [range_resolution]
    bufferOffset = _serializer.float64(obj.range_resolution, buffer, bufferOffset);
    // Serialize message field [num_ranges]
    bufferOffset = _serializer.uint32(obj.num_ranges, buffer, bufferOffset);
    // Serialize message field [num_beams]
    bufferOffset = _serializer.uint32(obj.num_beams, buffer, bufferOffset);
    // Serialize message field [ping]
    bufferOffset = sensor_msgs.msg.CompressedImage.serialize(obj.ping, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type OculusPing
    let len;
    let data = new OculusPing(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [fire_msg]
    data.fire_msg = OculusFire.deserialize(buffer, bufferOffset);
    // Deserialize message field [ping_id]
    data.ping_id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [part_number]
    data.part_number = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [start_time]
    data.start_time = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [bearings]
    data.bearings = _arrayDeserializer.int16(buffer, bufferOffset, null)
    // Deserialize message field [range_resolution]
    data.range_resolution = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [num_ranges]
    data.num_ranges = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [num_beams]
    data.num_beams = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [ping]
    data.ping = sensor_msgs.msg.CompressedImage.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += OculusFire.getMessageSize(object.fire_msg);
    length += 2 * object.bearings.length;
    length += sensor_msgs.msg.CompressedImage.getMessageSize(object.ping);
    return length + 30;
  }

  static datatype() {
    // Returns string type for a message object
    return 'sonar_oculus/OculusPing';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9f6ad8a7bb36e92c4f0225b11da7ca2e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    
    OculusFire fire_msg
    
    uint32     ping_id
    uint16     part_number
    uint32     start_time
    
    int16[]    bearings         # bearings of beams (bearing * PI / 18000)
    float64    range_resolution # length of a single range bin
    uint32     num_ranges       # number of range lines in the image
    uint32     num_beams        # number of bearings in the image     
    
    sensor_msgs/CompressedImage ping
    
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
    MSG: sonar_oculus/OculusFire
    Header header
    
    uint8    mode  
    uint8    gamma
    uint8    flags
    float64  range
    float64  gain
    float64  speed_of_sound
    float64  salinity
    ================================================================================
    MSG: sensor_msgs/CompressedImage
    # This message contains a compressed image
    
    Header header        # Header timestamp should be acquisition time of image
                         # Header frame_id should be optical frame of camera
                         # origin of frame should be optical center of camera
                         # +x should point to the right in the image
                         # +y should point down in the image
                         # +z should point into to plane of the image
    
    string format        # Specifies the format of the data
                         #   Acceptable values:
                         #     jpeg, png
    uint8[] data         # Compressed image buffer
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new OculusPing(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.fire_msg !== undefined) {
      resolved.fire_msg = OculusFire.Resolve(msg.fire_msg)
    }
    else {
      resolved.fire_msg = new OculusFire()
    }

    if (msg.ping_id !== undefined) {
      resolved.ping_id = msg.ping_id;
    }
    else {
      resolved.ping_id = 0
    }

    if (msg.part_number !== undefined) {
      resolved.part_number = msg.part_number;
    }
    else {
      resolved.part_number = 0
    }

    if (msg.start_time !== undefined) {
      resolved.start_time = msg.start_time;
    }
    else {
      resolved.start_time = 0
    }

    if (msg.bearings !== undefined) {
      resolved.bearings = msg.bearings;
    }
    else {
      resolved.bearings = []
    }

    if (msg.range_resolution !== undefined) {
      resolved.range_resolution = msg.range_resolution;
    }
    else {
      resolved.range_resolution = 0.0
    }

    if (msg.num_ranges !== undefined) {
      resolved.num_ranges = msg.num_ranges;
    }
    else {
      resolved.num_ranges = 0
    }

    if (msg.num_beams !== undefined) {
      resolved.num_beams = msg.num_beams;
    }
    else {
      resolved.num_beams = 0
    }

    if (msg.ping !== undefined) {
      resolved.ping = sensor_msgs.msg.CompressedImage.Resolve(msg.ping)
    }
    else {
      resolved.ping = new sensor_msgs.msg.CompressedImage()
    }

    return resolved;
    }
};

module.exports = OculusPing;
