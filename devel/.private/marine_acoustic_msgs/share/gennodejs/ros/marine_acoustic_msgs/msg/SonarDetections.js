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
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class SonarDetections {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.ping_info = null;
      this.flags = null;
      this.two_way_travel_times = null;
      this.tx_delays = null;
      this.intensities = null;
      this.tx_angles = null;
      this.rx_angles = null;
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
      if (initObj.hasOwnProperty('two_way_travel_times')) {
        this.two_way_travel_times = initObj.two_way_travel_times
      }
      else {
        this.two_way_travel_times = [];
      }
      if (initObj.hasOwnProperty('tx_delays')) {
        this.tx_delays = initObj.tx_delays
      }
      else {
        this.tx_delays = [];
      }
      if (initObj.hasOwnProperty('intensities')) {
        this.intensities = initObj.intensities
      }
      else {
        this.intensities = [];
      }
      if (initObj.hasOwnProperty('tx_angles')) {
        this.tx_angles = initObj.tx_angles
      }
      else {
        this.tx_angles = [];
      }
      if (initObj.hasOwnProperty('rx_angles')) {
        this.rx_angles = initObj.rx_angles
      }
      else {
        this.rx_angles = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SonarDetections
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
    // Serialize message field [two_way_travel_times]
    bufferOffset = _arraySerializer.float32(obj.two_way_travel_times, buffer, bufferOffset, null);
    // Serialize message field [tx_delays]
    bufferOffset = _arraySerializer.float32(obj.tx_delays, buffer, bufferOffset, null);
    // Serialize message field [intensities]
    bufferOffset = _arraySerializer.float32(obj.intensities, buffer, bufferOffset, null);
    // Serialize message field [tx_angles]
    bufferOffset = _arraySerializer.float32(obj.tx_angles, buffer, bufferOffset, null);
    // Serialize message field [rx_angles]
    bufferOffset = _arraySerializer.float32(obj.rx_angles, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SonarDetections
    let len;
    let data = new SonarDetections(null);
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
    // Deserialize message field [two_way_travel_times]
    data.two_way_travel_times = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [tx_delays]
    data.tx_delays = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [intensities]
    data.intensities = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [tx_angles]
    data.tx_angles = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [rx_angles]
    data.rx_angles = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += PingInfo.getMessageSize(object.ping_info);
    length += object.flags.length;
    length += 4 * object.two_way_travel_times.length;
    length += 4 * object.tx_delays.length;
    length += 4 * object.intensities.length;
    length += 4 * object.tx_angles.length;
    length += 4 * object.rx_angles.length;
    return length + 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'marine_acoustic_msgs/SonarDetections';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '588993519ccaab99fb0df80256b440ff';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Single ping from a multibeam sonar.
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
    
    # Truly raw multibeam data uses travel times rather than ranges.
    # reported in seconds
    float32[] two_way_travel_times
    
    # Multi-sector multibeams can transmit different sectors at different times
    # The Reson doesn't but we include a TX delay for each beam anyway.
    #
    # Overall, therefore, our overall time is:
    #
    # header.stamp: TX cycle starts
    # Each beam's TX time: header.stamp + txDelay[i]
    # Each beam's RX time: header.stamp + txDelay[i] + twowayTravelTime[i]
    # reported in seconds
    float32[] tx_delays
    
    # Sonar-reported intensity.  Usually uncalibrated and crude
    float32[] intensities
    
    # Sonar-reported along-track steering angle (applied to tx beam)
    # + forward, - aft for a downlooking sonar
    # reported in radians
    float32[] tx_angles
    
    # Sonar-reported across-track steering angle (applied to rx beam)
    # + to starboard, - to port for a downlooking sonar
    # reported in radians
    float32[] rx_angles
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SonarDetections(null);
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

    if (msg.two_way_travel_times !== undefined) {
      resolved.two_way_travel_times = msg.two_way_travel_times;
    }
    else {
      resolved.two_way_travel_times = []
    }

    if (msg.tx_delays !== undefined) {
      resolved.tx_delays = msg.tx_delays;
    }
    else {
      resolved.tx_delays = []
    }

    if (msg.intensities !== undefined) {
      resolved.intensities = msg.intensities;
    }
    else {
      resolved.intensities = []
    }

    if (msg.tx_angles !== undefined) {
      resolved.tx_angles = msg.tx_angles;
    }
    else {
      resolved.tx_angles = []
    }

    if (msg.rx_angles !== undefined) {
      resolved.rx_angles = msg.rx_angles;
    }
    else {
      resolved.rx_angles = []
    }

    return resolved;
    }
};

module.exports = SonarDetections;
