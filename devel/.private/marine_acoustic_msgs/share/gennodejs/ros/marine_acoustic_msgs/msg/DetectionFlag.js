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

class DetectionFlag {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.flag = null;
    }
    else {
      if (initObj.hasOwnProperty('flag')) {
        this.flag = initObj.flag
      }
      else {
        this.flag = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DetectionFlag
    // Serialize message field [flag]
    bufferOffset = _serializer.uint8(obj.flag, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DetectionFlag
    let len;
    let data = new DetectionFlag(null);
    // Deserialize message field [flag]
    data.flag = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'marine_acoustic_msgs/DetectionFlag';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2c45bd69e61e55c2962ccd8337e7d00d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new DetectionFlag(null);
    if (msg.flag !== undefined) {
      resolved.flag = msg.flag;
    }
    else {
      resolved.flag = 0
    }

    return resolved;
    }
};

// Constants for message
DetectionFlag.Constants = {
  DETECT_OK: 0,
  DETECT_BAD_SONAR: 1,
  DETECT_BAD_FILTER: 2,
  DETECT_BAD_USER: 4,
}

module.exports = DetectionFlag;
