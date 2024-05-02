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

class SonarImageData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.is_bigendian = null;
      this.dtype = null;
      this.beam_count = null;
      this.data = null;
    }
    else {
      if (initObj.hasOwnProperty('is_bigendian')) {
        this.is_bigendian = initObj.is_bigendian
      }
      else {
        this.is_bigendian = false;
      }
      if (initObj.hasOwnProperty('dtype')) {
        this.dtype = initObj.dtype
      }
      else {
        this.dtype = 0;
      }
      if (initObj.hasOwnProperty('beam_count')) {
        this.beam_count = initObj.beam_count
      }
      else {
        this.beam_count = 0;
      }
      if (initObj.hasOwnProperty('data')) {
        this.data = initObj.data
      }
      else {
        this.data = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SonarImageData
    // Serialize message field [is_bigendian]
    bufferOffset = _serializer.bool(obj.is_bigendian, buffer, bufferOffset);
    // Serialize message field [dtype]
    bufferOffset = _serializer.uint32(obj.dtype, buffer, bufferOffset);
    // Serialize message field [beam_count]
    bufferOffset = _serializer.uint32(obj.beam_count, buffer, bufferOffset);
    // Serialize message field [data]
    bufferOffset = _arraySerializer.uint8(obj.data, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SonarImageData
    let len;
    let data = new SonarImageData(null);
    // Deserialize message field [is_bigendian]
    data.is_bigendian = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [dtype]
    data.dtype = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [beam_count]
    data.beam_count = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [data]
    data.data = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.data.length;
    return length + 13;
  }

  static datatype() {
    // Returns string type for a message object
    return 'marine_acoustic_msgs/SonarImageData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4daa9f67cfdb0ed22d5f2fe52c794da3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new SonarImageData(null);
    if (msg.is_bigendian !== undefined) {
      resolved.is_bigendian = msg.is_bigendian;
    }
    else {
      resolved.is_bigendian = false
    }

    if (msg.dtype !== undefined) {
      resolved.dtype = msg.dtype;
    }
    else {
      resolved.dtype = 0
    }

    if (msg.beam_count !== undefined) {
      resolved.beam_count = msg.beam_count;
    }
    else {
      resolved.beam_count = 0
    }

    if (msg.data !== undefined) {
      resolved.data = msg.data;
    }
    else {
      resolved.data = []
    }

    return resolved;
    }
};

// Constants for message
SonarImageData.Constants = {
  DTYPE_UINT8: 0,
  DTYPE_INT8: 1,
  DTYPE_UINT16: 2,
  DTYPE_INT16: 3,
  DTYPE_UINT32: 4,
  DTYPE_INT32: 5,
  DTYPE_UINT64: 6,
  DTYPE_INT64: 7,
  DTYPE_FLOAT32: 8,
  DTYPE_FLOAT64: 9,
}

module.exports = SonarImageData;
