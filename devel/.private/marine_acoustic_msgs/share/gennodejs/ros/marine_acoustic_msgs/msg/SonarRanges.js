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
let DetectionFlag = require('./DetectionFlag.js');
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class SonarRanges {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.ping_info = null;
      this.flags = null;
      this.transmit_delays = null;
      this.intensities = null;
      this.beam_unit_vec = null;
      this.ranges = null;
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
      if (initObj.hasOwnProperty('flags')) {
        this.flags = initObj.flags
      }
      else {
        this.flags = [];
      }
      if (initObj.hasOwnProperty('transmit_delays')) {
        this.transmit_delays = initObj.transmit_delays
      }
      else {
        this.transmit_delays = [];
      }
      if (initObj.hasOwnProperty('intensities')) {
        this.intensities = initObj.intensities
      }
      else {
        this.intensities = [];
      }
      if (initObj.hasOwnProperty('beam_unit_vec')) {
        this.beam_unit_vec = initObj.beam_unit_vec
      }
      else {
        this.beam_unit_vec = [];
      }
      if (initObj.hasOwnProperty('ranges')) {
        this.ranges = initObj.ranges
      }
      else {
        this.ranges = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SonarRanges
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [ping_info]
    bufferOffset = PingInfo.serialize(obj.ping_info, buffer, bufferOffset);
    // Serialize message field [flags]
    // Serialize the length for message field [flags]
    bufferOffset = _serializer.uint32(obj.flags.length, buffer, bufferOffset);
    obj.flags.forEach((val) => {
      bufferOffset = DetectionFlag.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [transmit_delays]
    bufferOffset = _arraySerializer.float32(obj.transmit_delays, buffer, bufferOffset, null);
    // Serialize message field [intensities]
    bufferOffset = _arraySerializer.float32(obj.intensities, buffer, bufferOffset, null);
    // Serialize message field [beam_unit_vec]
    // Serialize the length for message field [beam_unit_vec]
    bufferOffset = _serializer.uint32(obj.beam_unit_vec.length, buffer, bufferOffset);
    obj.beam_unit_vec.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Vector3.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [ranges]
    bufferOffset = _arraySerializer.float32(obj.ranges, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SonarRanges
    let len;
    let data = new SonarRanges(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [ping_info]
    data.ping_info = PingInfo.deserialize(buffer, bufferOffset);
    // Deserialize message field [flags]
    // Deserialize array length for message field [flags]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.flags = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.flags[i] = DetectionFlag.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [transmit_delays]
    data.transmit_delays = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [intensities]
    data.intensities = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [beam_unit_vec]
    // Deserialize array length for message field [beam_unit_vec]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.beam_unit_vec = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.beam_unit_vec[i] = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [ranges]
    data.ranges = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += PingInfo.getMessageSize(object.ping_info);
    length += object.flags.length;
    length += 4 * object.transmit_delays.length;
    length += 4 * object.intensities.length;
    length += 24 * object.beam_unit_vec.length;
    length += 4 * object.ranges.length;
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'marine_acoustic_msgs/SonarRanges';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'be94c27604dc96cadea282ffc5faacb9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Single ping from a profiling sonar.
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
    float64 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SonarRanges(null);
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

    if (msg.flags !== undefined) {
      resolved.flags = new Array(msg.flags.length);
      for (let i = 0; i < resolved.flags.length; ++i) {
        resolved.flags[i] = DetectionFlag.Resolve(msg.flags[i]);
      }
    }
    else {
      resolved.flags = []
    }

    if (msg.transmit_delays !== undefined) {
      resolved.transmit_delays = msg.transmit_delays;
    }
    else {
      resolved.transmit_delays = []
    }

    if (msg.intensities !== undefined) {
      resolved.intensities = msg.intensities;
    }
    else {
      resolved.intensities = []
    }

    if (msg.beam_unit_vec !== undefined) {
      resolved.beam_unit_vec = new Array(msg.beam_unit_vec.length);
      for (let i = 0; i < resolved.beam_unit_vec.length; ++i) {
        resolved.beam_unit_vec[i] = geometry_msgs.msg.Vector3.Resolve(msg.beam_unit_vec[i]);
      }
    }
    else {
      resolved.beam_unit_vec = []
    }

    if (msg.ranges !== undefined) {
      resolved.ranges = msg.ranges;
    }
    else {
      resolved.ranges = []
    }

    return resolved;
    }
};

module.exports = SonarRanges;
