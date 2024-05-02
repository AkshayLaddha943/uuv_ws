// Auto-generated. Do not edit!

// (in-package marine_acoustic_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class PingInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.frequency = null;
      this.sound_speed = null;
      this.tx_beamwidths = null;
      this.rx_beamwidths = null;
    }
    else {
      if (initObj.hasOwnProperty('frequency')) {
        this.frequency = initObj.frequency
      }
      else {
        this.frequency = 0.0;
      }
      if (initObj.hasOwnProperty('sound_speed')) {
        this.sound_speed = initObj.sound_speed
      }
      else {
        this.sound_speed = 0.0;
      }
      if (initObj.hasOwnProperty('tx_beamwidths')) {
        this.tx_beamwidths = initObj.tx_beamwidths
      }
      else {
        this.tx_beamwidths = [];
      }
      if (initObj.hasOwnProperty('rx_beamwidths')) {
        this.rx_beamwidths = initObj.rx_beamwidths
      }
      else {
        this.rx_beamwidths = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PingInfo
    // Serialize message field [frequency]
    bufferOffset = _serializer.float32(obj.frequency, buffer, bufferOffset);
    // Serialize message field [sound_speed]
    bufferOffset = _serializer.float32(obj.sound_speed, buffer, bufferOffset);
    // Serialize message field [tx_beamwidths]
    bufferOffset = _arraySerializer.float32(obj.tx_beamwidths, buffer, bufferOffset, null);
    // Serialize message field [rx_beamwidths]
    bufferOffset = _arraySerializer.float32(obj.rx_beamwidths, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PingInfo
    let len;
    let data = new PingInfo(null);
    // Deserialize message field [frequency]
    data.frequency = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [sound_speed]
    data.sound_speed = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [tx_beamwidths]
    data.tx_beamwidths = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [rx_beamwidths]
    data.rx_beamwidths = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.tx_beamwidths.length;
    length += 4 * object.rx_beamwidths.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'marine_acoustic_msgs/PingInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a0641c363452e8f5b02c57db588deecc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PingInfo(null);
    if (msg.frequency !== undefined) {
      resolved.frequency = msg.frequency;
    }
    else {
      resolved.frequency = 0.0
    }

    if (msg.sound_speed !== undefined) {
      resolved.sound_speed = msg.sound_speed;
    }
    else {
      resolved.sound_speed = 0.0
    }

    if (msg.tx_beamwidths !== undefined) {
      resolved.tx_beamwidths = msg.tx_beamwidths;
    }
    else {
      resolved.tx_beamwidths = []
    }

    if (msg.rx_beamwidths !== undefined) {
      resolved.rx_beamwidths = msg.rx_beamwidths;
    }
    else {
      resolved.rx_beamwidths = []
    }

    return resolved;
    }
};

module.exports = PingInfo;
