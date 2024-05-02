// Auto-generated. Do not edit!

// (in-package marine_acoustic_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let PingInfo = require('./PingInfo.js');
let SonarImageData = require('./SonarImageData.js');
let std_msgs = _finder('std_msgs');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class ProjectedSonarImage {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.ping_info = null;
      this.beam_directions = null;
      this.ranges = null;
      this.image = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('ping_info')) {
        this.ping_info = initObj.ping_info
      }
      else {
        this.ping_info = new PingInfo();
      }
      if (initObj.hasOwnProperty('beam_directions')) {
        this.beam_directions = initObj.beam_directions
      }
      else {
        this.beam_directions = [];
      }
      if (initObj.hasOwnProperty('ranges')) {
        this.ranges = initObj.ranges
      }
      else {
        this.ranges = [];
      }
      if (initObj.hasOwnProperty('image')) {
        this.image = initObj.image
      }
      else {
        this.image = new SonarImageData();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ProjectedSonarImage
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [ping_info]
    bufferOffset = PingInfo.serialize(obj.ping_info, buffer, bufferOffset);
    // Serialize message field [beam_directions]
    // Serialize the length for message field [beam_directions]
    bufferOffset = _serializer.uint32(obj.beam_directions.length, buffer, bufferOffset);
    obj.beam_directions.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Vector3.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [ranges]
    bufferOffset = _arraySerializer.float32(obj.ranges, buffer, bufferOffset, null);
    // Serialize message field [image]
    bufferOffset = SonarImageData.serialize(obj.image, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ProjectedSonarImage
    let len;
    let data = new ProjectedSonarImage(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [ping_info]
    data.ping_info = PingInfo.deserialize(buffer, bufferOffset);
    // Deserialize message field [beam_directions]
    // Deserialize array length for message field [beam_directions]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.beam_directions = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.beam_directions[i] = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [ranges]
    data.ranges = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [image]
    data.image = SonarImageData.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += PingInfo.getMessageSize(object.ping_info);
    length += 24 * object.beam_directions.length;
    length += 4 * object.ranges.length;
    length += SonarImageData.getMessageSize(object.image);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'marine_acoustic_msgs/ProjectedSonarImage';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c72fc8e29ab227a547720a36666022fd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Single scan from an imaging sonar
    #
    # The Z-axis is centered in the plane of the fan ("forward"), with X up,
    # in order to be consistent with the NED for traditional multibeam profilers.
    #
    # For sonars with a 1D array, the beams lie on the Y-Z plane, and
    # and each beam has an azimuth (rotation about X) value.  Zero azimuth
    # is in the direction of the Z-axis, typically "straight out" from the sonar.
    # Elevation is the orthogonal direction (rotation about Y),
    # often termed the "vertical aperture"
    
    # The header time should be the time the ping was transmitted, not
    # the time the message was received.
    # Note that these two could potentially be several seconds apart,
    # especially in deep water.
    std_msgs/Header header
    
    PingInfo ping_info
    
    geometry_msgs/Vector3[] beam_directions
    
    # Center of each range bin in meters. Note this these may not be equally
    # spaced, and do not necessarily start at zero range.
    float32[] ranges
    
    SonarImageData image
    
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
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    ================================================================================
    MSG: marine_acoustic_msgs/SonarImageData
    bool    is_bigendian
    
    uint32  DTYPE_UINT8 = 0
    uint32  DTYPE_INT8 = 1
    uint32  DTYPE_UINT16 = 2
    uint32  DTYPE_INT16 = 3
    uint32  DTYPE_UINT32 = 4
    uint32  DTYPE_INT32 = 5
    uint32  DTYPE_UINT64 = 6
    uint32  DTYPE_INT64 = 7
    uint32  DTYPE_FLOAT32 = 8
    uint32  DTYPE_FLOAT64 = 9
    
    uint32  dtype
    
    # the number of beams associated with the image
    uint32 beam_count
    
    # The actually pixel data in row-major (beam_index major) format
    uint8[] data
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ProjectedSonarImage(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.ping_info !== undefined) {
      resolved.ping_info = PingInfo.Resolve(msg.ping_info)
    }
    else {
      resolved.ping_info = new PingInfo()
    }

    if (msg.beam_directions !== undefined) {
      resolved.beam_directions = new Array(msg.beam_directions.length);
      for (let i = 0; i < resolved.beam_directions.length; ++i) {
        resolved.beam_directions[i] = geometry_msgs.msg.Vector3.Resolve(msg.beam_directions[i]);
      }
    }
    else {
      resolved.beam_directions = []
    }

    if (msg.ranges !== undefined) {
      resolved.ranges = msg.ranges;
    }
    else {
      resolved.ranges = []
    }

    if (msg.image !== undefined) {
      resolved.image = SonarImageData.Resolve(msg.image)
    }
    else {
      resolved.image = new SonarImageData()
    }

    return resolved;
    }
};

module.exports = ProjectedSonarImage;
