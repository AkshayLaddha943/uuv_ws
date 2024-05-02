// Auto-generated. Do not edit!

// (in-package bruce_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let nav_msgs = _finder('nav_msgs');

//-----------------------------------------------------------

let ISAM2Update = require('../msg/ISAM2Update.js');

//-----------------------------------------------------------

class PredictSLAMUpdateRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.key = null;
      this.return_isam2_update = null;
      this.paths = null;
    }
    else {
      if (initObj.hasOwnProperty('key')) {
        this.key = initObj.key
      }
      else {
        this.key = 0;
      }
      if (initObj.hasOwnProperty('return_isam2_update')) {
        this.return_isam2_update = initObj.return_isam2_update
      }
      else {
        this.return_isam2_update = false;
      }
      if (initObj.hasOwnProperty('paths')) {
        this.paths = initObj.paths
      }
      else {
        this.paths = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PredictSLAMUpdateRequest
    // Serialize message field [key]
    bufferOffset = _serializer.uint32(obj.key, buffer, bufferOffset);
    // Serialize message field [return_isam2_update]
    bufferOffset = _serializer.bool(obj.return_isam2_update, buffer, bufferOffset);
    // Serialize message field [paths]
    // Serialize the length for message field [paths]
    bufferOffset = _serializer.uint32(obj.paths.length, buffer, bufferOffset);
    obj.paths.forEach((val) => {
      bufferOffset = nav_msgs.msg.Path.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PredictSLAMUpdateRequest
    let len;
    let data = new PredictSLAMUpdateRequest(null);
    // Deserialize message field [key]
    data.key = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [return_isam2_update]
    data.return_isam2_update = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [paths]
    // Deserialize array length for message field [paths]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.paths = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.paths[i] = nav_msgs.msg.Path.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.paths.forEach((val) => {
      length += nav_msgs.msg.Path.getMessageSize(val);
    });
    return length + 9;
  }

  static datatype() {
    // Returns string type for a service object
    return 'bruce_msgs/PredictSLAMUpdateRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '86289840d397dce55a55fd7404f3dfff';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 key
    bool return_isam2_update
    nav_msgs/Path[] paths
    
    ================================================================================
    MSG: nav_msgs/Path
    #An array of poses that represents a Path for a robot to follow
    Header header
    geometry_msgs/PoseStamped[] poses
    
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
    MSG: geometry_msgs/PoseStamped
    # A Pose with reference coordinate frame and timestamp
    Header header
    Pose pose
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PredictSLAMUpdateRequest(null);
    if (msg.key !== undefined) {
      resolved.key = msg.key;
    }
    else {
      resolved.key = 0
    }

    if (msg.return_isam2_update !== undefined) {
      resolved.return_isam2_update = msg.return_isam2_update;
    }
    else {
      resolved.return_isam2_update = false
    }

    if (msg.paths !== undefined) {
      resolved.paths = new Array(msg.paths.length);
      for (let i = 0; i < resolved.paths.length; ++i) {
        resolved.paths[i] = nav_msgs.msg.Path.Resolve(msg.paths[i]);
      }
    }
    else {
      resolved.paths = []
    }

    return resolved;
    }
};

class PredictSLAMUpdateResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.isam2_updates = null;
      this.keyframes = null;
    }
    else {
      if (initObj.hasOwnProperty('isam2_updates')) {
        this.isam2_updates = initObj.isam2_updates
      }
      else {
        this.isam2_updates = [];
      }
      if (initObj.hasOwnProperty('keyframes')) {
        this.keyframes = initObj.keyframes
      }
      else {
        this.keyframes = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PredictSLAMUpdateResponse
    // Serialize message field [isam2_updates]
    // Serialize the length for message field [isam2_updates]
    bufferOffset = _serializer.uint32(obj.isam2_updates.length, buffer, bufferOffset);
    obj.isam2_updates.forEach((val) => {
      bufferOffset = ISAM2Update.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [keyframes]
    // Serialize the length for message field [keyframes]
    bufferOffset = _serializer.uint32(obj.keyframes.length, buffer, bufferOffset);
    obj.keyframes.forEach((val) => {
      bufferOffset = nav_msgs.msg.Path.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PredictSLAMUpdateResponse
    let len;
    let data = new PredictSLAMUpdateResponse(null);
    // Deserialize message field [isam2_updates]
    // Deserialize array length for message field [isam2_updates]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.isam2_updates = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.isam2_updates[i] = ISAM2Update.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [keyframes]
    // Deserialize array length for message field [keyframes]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.keyframes = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.keyframes[i] = nav_msgs.msg.Path.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.isam2_updates.forEach((val) => {
      length += ISAM2Update.getMessageSize(val);
    });
    object.keyframes.forEach((val) => {
      length += nav_msgs.msg.Path.getMessageSize(val);
    });
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'bruce_msgs/PredictSLAMUpdateResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6410c519772996708be4e4c7d31590ad';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bruce_msgs/ISAM2Update[] isam2_updates
    nav_msgs/Path[] keyframes
    
    
    ================================================================================
    MSG: bruce_msgs/ISAM2Update
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
    
    ================================================================================
    MSG: nav_msgs/Path
    #An array of poses that represents a Path for a robot to follow
    Header header
    geometry_msgs/PoseStamped[] poses
    
    ================================================================================
    MSG: geometry_msgs/PoseStamped
    # A Pose with reference coordinate frame and timestamp
    Header header
    Pose pose
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PredictSLAMUpdateResponse(null);
    if (msg.isam2_updates !== undefined) {
      resolved.isam2_updates = new Array(msg.isam2_updates.length);
      for (let i = 0; i < resolved.isam2_updates.length; ++i) {
        resolved.isam2_updates[i] = ISAM2Update.Resolve(msg.isam2_updates[i]);
      }
    }
    else {
      resolved.isam2_updates = []
    }

    if (msg.keyframes !== undefined) {
      resolved.keyframes = new Array(msg.keyframes.length);
      for (let i = 0; i < resolved.keyframes.length; ++i) {
        resolved.keyframes[i] = nav_msgs.msg.Path.Resolve(msg.keyframes[i]);
      }
    }
    else {
      resolved.keyframes = []
    }

    return resolved;
    }
};

module.exports = {
  Request: PredictSLAMUpdateRequest,
  Response: PredictSLAMUpdateResponse,
  md5sum() { return '18a5f92af2249a995192f2aa3a6de24b'; },
  datatype() { return 'bruce_msgs/PredictSLAMUpdate'; }
};
