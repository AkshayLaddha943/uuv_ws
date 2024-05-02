// Auto-generated. Do not edit!

// (in-package bruce_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let nav_msgs = _finder('nav_msgs');

//-----------------------------------------------------------

class GetOccupancyMapRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.frames = null;
      this.resolution = null;
    }
    else {
      if (initObj.hasOwnProperty('frames')) {
        this.frames = initObj.frames
      }
      else {
        this.frames = [];
      }
      if (initObj.hasOwnProperty('resolution')) {
        this.resolution = initObj.resolution
      }
      else {
        this.resolution = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetOccupancyMapRequest
    // Serialize message field [frames]
    bufferOffset = _arraySerializer.uint32(obj.frames, buffer, bufferOffset, null);
    // Serialize message field [resolution]
    bufferOffset = _serializer.float32(obj.resolution, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetOccupancyMapRequest
    let len;
    let data = new GetOccupancyMapRequest(null);
    // Deserialize message field [frames]
    data.frames = _arrayDeserializer.uint32(buffer, bufferOffset, null)
    // Deserialize message field [resolution]
    data.resolution = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.frames.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'bruce_msgs/GetOccupancyMapRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3b41a8bd35ea379747b34a8701220f5d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32[] frames
    float32 resolution
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetOccupancyMapRequest(null);
    if (msg.frames !== undefined) {
      resolved.frames = msg.frames;
    }
    else {
      resolved.frames = []
    }

    if (msg.resolution !== undefined) {
      resolved.resolution = msg.resolution;
    }
    else {
      resolved.resolution = 0.0
    }

    return resolved;
    }
};

class GetOccupancyMapResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.occ = null;
    }
    else {
      if (initObj.hasOwnProperty('occ')) {
        this.occ = initObj.occ
      }
      else {
        this.occ = new nav_msgs.msg.OccupancyGrid();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetOccupancyMapResponse
    // Serialize message field [occ]
    bufferOffset = nav_msgs.msg.OccupancyGrid.serialize(obj.occ, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetOccupancyMapResponse
    let len;
    let data = new GetOccupancyMapResponse(null);
    // Deserialize message field [occ]
    data.occ = nav_msgs.msg.OccupancyGrid.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += nav_msgs.msg.OccupancyGrid.getMessageSize(object.occ);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'bruce_msgs/GetOccupancyMapResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f81179516ac8307b1a90ef4c8b13cd2b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    nav_msgs/OccupancyGrid occ
    
    ================================================================================
    MSG: nav_msgs/OccupancyGrid
    # This represents a 2-D grid map, in which each cell represents the probability of
    # occupancy.
    
    Header header 
    
    #MetaData for the map
    MapMetaData info
    
    # The map data, in row-major order, starting with (0,0).  Occupancy
    # probabilities are in the range [0,100].  Unknown is -1.
    int8[] data
    
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
    MSG: nav_msgs/MapMetaData
    # This hold basic information about the characterists of the OccupancyGrid
    
    # The time at which the map was loaded
    time map_load_time
    # The map resolution [m/cell]
    float32 resolution
    # Map width [cells]
    uint32 width
    # Map height [cells]
    uint32 height
    # The origin of the map [m, m, rad].  This is the real-world pose of the
    # cell (0,0) in the map.
    geometry_msgs/Pose origin
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
    const resolved = new GetOccupancyMapResponse(null);
    if (msg.occ !== undefined) {
      resolved.occ = nav_msgs.msg.OccupancyGrid.Resolve(msg.occ)
    }
    else {
      resolved.occ = new nav_msgs.msg.OccupancyGrid()
    }

    return resolved;
    }
};

module.exports = {
  Request: GetOccupancyMapRequest,
  Response: GetOccupancyMapResponse,
  md5sum() { return '85f4445a9d44297d096f4d7339d7a4ce'; },
  datatype() { return 'bruce_msgs/GetOccupancyMap'; }
};
