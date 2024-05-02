// Auto-generated. Do not edit!

// (in-package marine_sensor_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class RadarEcho {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.echoes = null;
    }
    else {
      if (initObj.hasOwnProperty('echoes')) {
        this.echoes = initObj.echoes
      }
      else {
        this.echoes = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RadarEcho
    // Serialize message field [echoes]
    bufferOffset = _arraySerializer.float32(obj.echoes, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RadarEcho
    let len;
    let data = new RadarEcho(null);
    // Deserialize message field [echoes]
    data.echoes = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.echoes.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'marine_sensor_msgs/RadarEcho';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8bc5ae449b200fba4d552b4225586696';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new RadarEcho(null);
    if (msg.echoes !== undefined) {
      resolved.echoes = msg.echoes;
    }
    else {
      resolved.echoes = []
    }

    return resolved;
    }
};

module.exports = RadarEcho;
