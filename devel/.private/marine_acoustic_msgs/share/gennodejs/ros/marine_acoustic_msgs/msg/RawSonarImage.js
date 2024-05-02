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

//-----------------------------------------------------------

class RawSonarImage {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.ping_info = null;
      this.sample_rate = null;
      this.samples_per_beam = null;
      this.sample0 = null;
      this.tx_delays = null;
      this.tx_angles = null;
      this.rx_angles = null;
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
      if (initObj.hasOwnProperty('sample_rate')) {
        this.sample_rate = initObj.sample_rate
      }
      else {
        this.sample_rate = 0.0;
      }
      if (initObj.hasOwnProperty('samples_per_beam')) {
        this.samples_per_beam = initObj.samples_per_beam
      }
      else {
        this.samples_per_beam = 0;
      }
      if (initObj.hasOwnProperty('sample0')) {
        this.sample0 = initObj.sample0
      }
      else {
        this.sample0 = 0;
      }
      if (initObj.hasOwnProperty('tx_delays')) {
        this.tx_delays = initObj.tx_delays
      }
      else {
        this.tx_delays = [];
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
      if (initObj.hasOwnProperty('image')) {
        this.image = initObj.image
      }
      else {
        this.image = new SonarImageData();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RawSonarImage
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [ping_info]
    bufferOffset = PingInfo.serialize(obj.ping_info, buffer, bufferOffset);
    // Serialize message field [sample_rate]
    bufferOffset = _serializer.float32(obj.sample_rate, buffer, bufferOffset);
    // Serialize message field [samples_per_beam]
    bufferOffset = _serializer.uint32(obj.samples_per_beam, buffer, bufferOffset);
    // Serialize message field [sample0]
    bufferOffset = _serializer.uint32(obj.sample0, buffer, bufferOffset);
    // Serialize message field [tx_delays]
    bufferOffset = _arraySerializer.float32(obj.tx_delays, buffer, bufferOffset, null);
    // Serialize message field [tx_angles]
    bufferOffset = _arraySerializer.float32(obj.tx_angles, buffer, bufferOffset, null);
    // Serialize message field [rx_angles]
    bufferOffset = _arraySerializer.float32(obj.rx_angles, buffer, bufferOffset, null);
    // Serialize message field [image]
    bufferOffset = SonarImageData.serialize(obj.image, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RawSonarImage
    let len;
    let data = new RawSonarImage(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [ping_info]
    data.ping_info = PingInfo.deserialize(buffer, bufferOffset);
    // Deserialize message field [sample_rate]
    data.sample_rate = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [samples_per_beam]
    data.samples_per_beam = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [sample0]
    data.sample0 = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [tx_delays]
    data.tx_delays = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [tx_angles]
    data.tx_angles = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [rx_angles]
    data.rx_angles = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [image]
    data.image = SonarImageData.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += PingInfo.getMessageSize(object.ping_info);
    length += 4 * object.tx_delays.length;
    length += 4 * object.tx_angles.length;
    length += 4 * object.rx_angles.length;
    length += SonarImageData.getMessageSize(object.image);
    return length + 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'marine_acoustic_msgs/RawSonarImage';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '84d7210aa67320a9262e0908f3e466c5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    # The header time should be the time the ping was transmitted, not
    # the time the message was received.
    # Note that these two could potentially be several seconds apart,
    # especially in deep water.
    std_msgs/Header header
    
    PingInfo ping_info
    
    float32 sample_rate   # hz
    
    uint32  samples_per_beam  # the number of samples in each beam
    
    # Many sonars have some kind of upper gate for water column data
    # this represents the sample number of the first non empty sample
    # for beam n
    uint32 sample0
    
    # Multi-sector multibeams can transmit different sectors at different times
    # The Reson doesn't but we include a TX delay for each beam anyway.
    #
    # Overall, therefore, our overall time is:
    #
    # header.stamp: TX cycle starts
    # Each beam's TX time: header.stamp + transmit_delay[i]
    # Each beam's RX time: header.stamp + transmit_delay[i] + sample_rate*image_row
    float32[] tx_delays
    # Steering angle applied to tx beam
    # reported in radians
    float32[] tx_angles
    
    # Steering angle applied to rx beam
    # reported in radians
    float32[] rx_angles
    
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
    const resolved = new RawSonarImage(null);
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

    if (msg.sample_rate !== undefined) {
      resolved.sample_rate = msg.sample_rate;
    }
    else {
      resolved.sample_rate = 0.0
    }

    if (msg.samples_per_beam !== undefined) {
      resolved.samples_per_beam = msg.samples_per_beam;
    }
    else {
      resolved.samples_per_beam = 0
    }

    if (msg.sample0 !== undefined) {
      resolved.sample0 = msg.sample0;
    }
    else {
      resolved.sample0 = 0
    }

    if (msg.tx_delays !== undefined) {
      resolved.tx_delays = msg.tx_delays;
    }
    else {
      resolved.tx_delays = []
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

    if (msg.image !== undefined) {
      resolved.image = SonarImageData.Resolve(msg.image)
    }
    else {
      resolved.image = new SonarImageData()
    }

    return resolved;
    }
};

module.exports = RawSonarImage;
