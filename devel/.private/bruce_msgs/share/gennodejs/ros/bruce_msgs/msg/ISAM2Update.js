// Auto-generated. Do not edit!

// (in-package bruce_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class ISAM2Update {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.key = null;
      this.isam2 = null;
      this.graph = null;
      this.values = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('key')) {
        this.key = initObj.key
      }
      else {
        this.key = 0;
      }
      if (initObj.hasOwnProperty('isam2')) {
        this.isam2 = initObj.isam2
      }
      else {
        this.isam2 = [];
      }
      if (initObj.hasOwnProperty('graph')) {
        this.graph = initObj.graph
      }
      else {
        this.graph = [];
      }
      if (initObj.hasOwnProperty('values')) {
        this.values = initObj.values
      }
      else {
        this.values = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ISAM2Update
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [key]
    bufferOffset = _serializer.uint32(obj.key, buffer, bufferOffset);
    // Serialize message field [isam2]
    bufferOffset = _arraySerializer.uint8(obj.isam2, buffer, bufferOffset, null);
    // Serialize message field [graph]
    bufferOffset = _arraySerializer.uint8(obj.graph, buffer, bufferOffset, null);
    // Serialize message field [values]
    bufferOffset = _arraySerializer.uint8(obj.values, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ISAM2Update
    let len;
    let data = new ISAM2Update(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [key]
    data.key = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [isam2]
    data.isam2 = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [graph]
    data.graph = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [values]
    data.values = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.isam2.length;
    length += object.graph.length;
    length += object.values.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'bruce_msgs/ISAM2Update';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'adea0c2c4633bd400b6e7cd433b18e42';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    uint32 key
    uint8[] isam2
    uint8[] graph
    uint8[] values
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ISAM2Update(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.key !== undefined) {
      resolved.key = msg.key;
    }
    else {
      resolved.key = 0
    }

    if (msg.isam2 !== undefined) {
      resolved.isam2 = msg.isam2;
    }
    else {
      resolved.isam2 = []
    }

    if (msg.graph !== undefined) {
      resolved.graph = msg.graph;
    }
    else {
      resolved.graph = []
    }

    if (msg.values !== undefined) {
      resolved.values = msg.values;
    }
    else {
      resolved.values = []
    }

    return resolved;
    }
};

module.exports = ISAM2Update;
