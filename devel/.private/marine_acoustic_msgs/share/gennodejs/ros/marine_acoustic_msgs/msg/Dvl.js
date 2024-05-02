// Auto-generated. Do not edit!

// (in-package marine_acoustic_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Dvl {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.velocity_mode = null;
      this.dvl_type = null;
      this.velocity = null;
      this.velocity_covar = null;
      this.altitude = null;
      this.course_gnd = null;
      this.speed_gnd = null;
      this.num_good_beams = null;
      this.sound_speed = null;
      this.beam_ranges_valid = null;
      this.beam_velocities_valid = null;
      this.beam_unit_vec = null;
      this.range = null;
      this.range_covar = null;
      this.beam_quality = null;
      this.beam_velocity = null;
      this.beam_velocity_covar = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('velocity_mode')) {
        this.velocity_mode = initObj.velocity_mode
      }
      else {
        this.velocity_mode = 0;
      }
      if (initObj.hasOwnProperty('dvl_type')) {
        this.dvl_type = initObj.dvl_type
      }
      else {
        this.dvl_type = 0;
      }
      if (initObj.hasOwnProperty('velocity')) {
        this.velocity = initObj.velocity
      }
      else {
        this.velocity = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('velocity_covar')) {
        this.velocity_covar = initObj.velocity_covar
      }
      else {
        this.velocity_covar = new Array(9).fill(0);
      }
      if (initObj.hasOwnProperty('altitude')) {
        this.altitude = initObj.altitude
      }
      else {
        this.altitude = 0.0;
      }
      if (initObj.hasOwnProperty('course_gnd')) {
        this.course_gnd = initObj.course_gnd
      }
      else {
        this.course_gnd = 0.0;
      }
      if (initObj.hasOwnProperty('speed_gnd')) {
        this.speed_gnd = initObj.speed_gnd
      }
      else {
        this.speed_gnd = 0.0;
      }
      if (initObj.hasOwnProperty('num_good_beams')) {
        this.num_good_beams = initObj.num_good_beams
      }
      else {
        this.num_good_beams = 0;
      }
      if (initObj.hasOwnProperty('sound_speed')) {
        this.sound_speed = initObj.sound_speed
      }
      else {
        this.sound_speed = 0.0;
      }
      if (initObj.hasOwnProperty('beam_ranges_valid')) {
        this.beam_ranges_valid = initObj.beam_ranges_valid
      }
      else {
        this.beam_ranges_valid = false;
      }
      if (initObj.hasOwnProperty('beam_velocities_valid')) {
        this.beam_velocities_valid = initObj.beam_velocities_valid
      }
      else {
        this.beam_velocities_valid = false;
      }
      if (initObj.hasOwnProperty('beam_unit_vec')) {
        this.beam_unit_vec = initObj.beam_unit_vec
      }
      else {
        this.beam_unit_vec = new Array(4).fill(new geometry_msgs.msg.Vector3());
      }
      if (initObj.hasOwnProperty('range')) {
        this.range = initObj.range
      }
      else {
        this.range = new Array(4).fill(0);
      }
      if (initObj.hasOwnProperty('range_covar')) {
        this.range_covar = initObj.range_covar
      }
      else {
        this.range_covar = new Array(4).fill(0);
      }
      if (initObj.hasOwnProperty('beam_quality')) {
        this.beam_quality = initObj.beam_quality
      }
      else {
        this.beam_quality = new Array(4).fill(0);
      }
      if (initObj.hasOwnProperty('beam_velocity')) {
        this.beam_velocity = initObj.beam_velocity
      }
      else {
        this.beam_velocity = new Array(4).fill(0);
      }
      if (initObj.hasOwnProperty('beam_velocity_covar')) {
        this.beam_velocity_covar = initObj.beam_velocity_covar
      }
      else {
        this.beam_velocity_covar = new Array(4).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Dvl
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [velocity_mode]
    bufferOffset = _serializer.uint8(obj.velocity_mode, buffer, bufferOffset);
    // Serialize message field [dvl_type]
    bufferOffset = _serializer.uint8(obj.dvl_type, buffer, bufferOffset);
    // Serialize message field [velocity]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.velocity, buffer, bufferOffset);
    // Check that the constant length array field [velocity_covar] has the right length
    if (obj.velocity_covar.length !== 9) {
      throw new Error('Unable to serialize array field velocity_covar - length must be 9')
    }
    // Serialize message field [velocity_covar]
    bufferOffset = _arraySerializer.float64(obj.velocity_covar, buffer, bufferOffset, 9);
    // Serialize message field [altitude]
    bufferOffset = _serializer.float64(obj.altitude, buffer, bufferOffset);
    // Serialize message field [course_gnd]
    bufferOffset = _serializer.float64(obj.course_gnd, buffer, bufferOffset);
    // Serialize message field [speed_gnd]
    bufferOffset = _serializer.float64(obj.speed_gnd, buffer, bufferOffset);
    // Serialize message field [num_good_beams]
    bufferOffset = _serializer.uint8(obj.num_good_beams, buffer, bufferOffset);
    // Serialize message field [sound_speed]
    bufferOffset = _serializer.float32(obj.sound_speed, buffer, bufferOffset);
    // Serialize message field [beam_ranges_valid]
    bufferOffset = _serializer.bool(obj.beam_ranges_valid, buffer, bufferOffset);
    // Serialize message field [beam_velocities_valid]
    bufferOffset = _serializer.bool(obj.beam_velocities_valid, buffer, bufferOffset);
    // Check that the constant length array field [beam_unit_vec] has the right length
    if (obj.beam_unit_vec.length !== 4) {
      throw new Error('Unable to serialize array field beam_unit_vec - length must be 4')
    }
    // Serialize message field [beam_unit_vec]
    obj.beam_unit_vec.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Vector3.serialize(val, buffer, bufferOffset);
    });
    // Check that the constant length array field [range] has the right length
    if (obj.range.length !== 4) {
      throw new Error('Unable to serialize array field range - length must be 4')
    }
    // Serialize message field [range]
    bufferOffset = _arraySerializer.float64(obj.range, buffer, bufferOffset, 4);
    // Check that the constant length array field [range_covar] has the right length
    if (obj.range_covar.length !== 4) {
      throw new Error('Unable to serialize array field range_covar - length must be 4')
    }
    // Serialize message field [range_covar]
    bufferOffset = _arraySerializer.float32(obj.range_covar, buffer, bufferOffset, 4);
    // Check that the constant length array field [beam_quality] has the right length
    if (obj.beam_quality.length !== 4) {
      throw new Error('Unable to serialize array field beam_quality - length must be 4')
    }
    // Serialize message field [beam_quality]
    bufferOffset = _arraySerializer.float32(obj.beam_quality, buffer, bufferOffset, 4);
    // Check that the constant length array field [beam_velocity] has the right length
    if (obj.beam_velocity.length !== 4) {
      throw new Error('Unable to serialize array field beam_velocity - length must be 4')
    }
    // Serialize message field [beam_velocity]
    bufferOffset = _arraySerializer.float32(obj.beam_velocity, buffer, bufferOffset, 4);
    // Check that the constant length array field [beam_velocity_covar] has the right length
    if (obj.beam_velocity_covar.length !== 4) {
      throw new Error('Unable to serialize array field beam_velocity_covar - length must be 4')
    }
    // Serialize message field [beam_velocity_covar]
    bufferOffset = _arraySerializer.float32(obj.beam_velocity_covar, buffer, bufferOffset, 4);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Dvl
    let len;
    let data = new Dvl(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [velocity_mode]
    data.velocity_mode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [dvl_type]
    data.dvl_type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [velocity]
    data.velocity = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [velocity_covar]
    data.velocity_covar = _arrayDeserializer.float64(buffer, bufferOffset, 9)
    // Deserialize message field [altitude]
    data.altitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [course_gnd]
    data.course_gnd = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [speed_gnd]
    data.speed_gnd = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [num_good_beams]
    data.num_good_beams = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [sound_speed]
    data.sound_speed = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [beam_ranges_valid]
    data.beam_ranges_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [beam_velocities_valid]
    data.beam_velocities_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [beam_unit_vec]
    len = 4;
    data.beam_unit_vec = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.beam_unit_vec[i] = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [range]
    data.range = _arrayDeserializer.float64(buffer, bufferOffset, 4)
    // Deserialize message field [range_covar]
    data.range_covar = _arrayDeserializer.float32(buffer, bufferOffset, 4)
    // Deserialize message field [beam_quality]
    data.beam_quality = _arrayDeserializer.float32(buffer, bufferOffset, 4)
    // Deserialize message field [beam_velocity]
    data.beam_velocity = _arrayDeserializer.float32(buffer, bufferOffset, 4)
    // Deserialize message field [beam_velocity_covar]
    data.beam_velocity_covar = _arrayDeserializer.float32(buffer, bufferOffset, 4)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 321;
  }

  static datatype() {
    // Returns string type for a message object
    return 'marine_acoustic_msgs/Dvl';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f09bbfba6f467f84523073fb27d38e3e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Message for single ground-track ping from a DVL.
    #
    # This message is modeled after WHOI's Dvl.msg from the ds_sensor_msgs
    # repository, which was released under a BSD license.
    # Modifications were made by UW-APL.
    
    # ENUM: Velocity mode
    uint8 DVL_MODE_BOTTOM=1
    uint8 DVL_MODE_WATER=2
    
    # ENUM: DVL Type; used in sound velocity corrections
    
    # Standard (Janus) array with one piston transducer for each beam.
    # If you have 4-5 individual disks on your DVL, use this one.
    # Examples include Sonardyne Syrinx, Nortek DVLs, and RDI Workhorse
    uint8 DVL_TYPE_PISTON=0
    
    # Phased-array DVL.  If you have one giant disk with complicated stuff
    # on it, probably this one.
    # Examples include newer RDI DVLs such as pathfinder, pioneer, and tasman.
    uint8 DVL_TYPE_PHASED_ARRAY=1
    
    # The standard ROS header.
    # Timestamp is neither transmit nor receive time -- it is the time that
    # the velocity should be considered valid at.
    # Frame convention:
    # * z-axis in direction DVL is pointing
    # * x-axis aligned with vehicle forward
    std_msgs/Header header
    
    # Velocity mode (see above)
    uint8 velocity_mode
    
    # Type of DVL array employed (see above).  Necessary when
    # deciding how to apply sound velocity corrections
    uint8 dvl_type
    
    # Velocities [m/s]
    geometry_msgs/Vector3 velocity
    
    # row-major, xyz axes.  Set to "-1" if not known.
    float64[9] velocity_covar
    
    # Average altitude of all good beam returns.
    # For 30-deg sensor, altitude = (sqrt(3) / 2) * sum(range) / num_good_beams
    float64 altitude
    # Calculated from xy velocities: course_gnd = atan2(velocity.y, velocity.x)
    float64 course_gnd
    # Calculated from xy velocities: speed_gnd = sqrt(velocity.x^2 + velocity.y^2)
    float64 speed_gnd
    
    uint8 num_good_beams
    
    # Speed of sound (m/s) used by the DVL
    float32 sound_speed
    
    # Beam data
    # Some DVLs/DVL configurations only report the derived velocities.
    bool beam_ranges_valid
    bool beam_velocities_valid
    
    # Geometry of each of the 4 beams
    geometry_msgs/Vector3[4] beam_unit_vec
    
    # beam_unit_vec[i] * range[i] is the point where the beam hits the seafloor.
    # For a 30-deg sensor, multiply by sqrt(3)/2 to get altitude.
    float64[4] range
    float32[4] range_covar
    
    # Beam quality flag.
    # The meaning of this flag is DVL-specific (at least for now).
    float32[4] beam_quality
    
    # Raw velocities for each beam [m/s].
    # Will be beam 1,2,3,4 velocity in beam coordinates
    float32[4] beam_velocity
    # Covariance, as always, should be -1 if unknown
    float32[4] beam_velocity_covar
    
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
    const resolved = new Dvl(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.velocity_mode !== undefined) {
      resolved.velocity_mode = msg.velocity_mode;
    }
    else {
      resolved.velocity_mode = 0
    }

    if (msg.dvl_type !== undefined) {
      resolved.dvl_type = msg.dvl_type;
    }
    else {
      resolved.dvl_type = 0
    }

    if (msg.velocity !== undefined) {
      resolved.velocity = geometry_msgs.msg.Vector3.Resolve(msg.velocity)
    }
    else {
      resolved.velocity = new geometry_msgs.msg.Vector3()
    }

    if (msg.velocity_covar !== undefined) {
      resolved.velocity_covar = msg.velocity_covar;
    }
    else {
      resolved.velocity_covar = new Array(9).fill(0)
    }

    if (msg.altitude !== undefined) {
      resolved.altitude = msg.altitude;
    }
    else {
      resolved.altitude = 0.0
    }

    if (msg.course_gnd !== undefined) {
      resolved.course_gnd = msg.course_gnd;
    }
    else {
      resolved.course_gnd = 0.0
    }

    if (msg.speed_gnd !== undefined) {
      resolved.speed_gnd = msg.speed_gnd;
    }
    else {
      resolved.speed_gnd = 0.0
    }

    if (msg.num_good_beams !== undefined) {
      resolved.num_good_beams = msg.num_good_beams;
    }
    else {
      resolved.num_good_beams = 0
    }

    if (msg.sound_speed !== undefined) {
      resolved.sound_speed = msg.sound_speed;
    }
    else {
      resolved.sound_speed = 0.0
    }

    if (msg.beam_ranges_valid !== undefined) {
      resolved.beam_ranges_valid = msg.beam_ranges_valid;
    }
    else {
      resolved.beam_ranges_valid = false
    }

    if (msg.beam_velocities_valid !== undefined) {
      resolved.beam_velocities_valid = msg.beam_velocities_valid;
    }
    else {
      resolved.beam_velocities_valid = false
    }

    if (msg.beam_unit_vec !== undefined) {
      resolved.beam_unit_vec = new Array(4)
      for (let i = 0; i < resolved.beam_unit_vec.length; ++i) {
        if (msg.beam_unit_vec.length > i) {
          resolved.beam_unit_vec[i] = geometry_msgs.msg.Vector3.Resolve(msg.beam_unit_vec[i]);
        }
        else {
          resolved.beam_unit_vec[i] = new geometry_msgs.msg.Vector3();
        }
      }
    }
    else {
      resolved.beam_unit_vec = new Array(4).fill(new geometry_msgs.msg.Vector3())
    }

    if (msg.range !== undefined) {
      resolved.range = msg.range;
    }
    else {
      resolved.range = new Array(4).fill(0)
    }

    if (msg.range_covar !== undefined) {
      resolved.range_covar = msg.range_covar;
    }
    else {
      resolved.range_covar = new Array(4).fill(0)
    }

    if (msg.beam_quality !== undefined) {
      resolved.beam_quality = msg.beam_quality;
    }
    else {
      resolved.beam_quality = new Array(4).fill(0)
    }

    if (msg.beam_velocity !== undefined) {
      resolved.beam_velocity = msg.beam_velocity;
    }
    else {
      resolved.beam_velocity = new Array(4).fill(0)
    }

    if (msg.beam_velocity_covar !== undefined) {
      resolved.beam_velocity_covar = msg.beam_velocity_covar;
    }
    else {
      resolved.beam_velocity_covar = new Array(4).fill(0)
    }

    return resolved;
    }
};

// Constants for message
Dvl.Constants = {
  DVL_MODE_BOTTOM: 1,
  DVL_MODE_WATER: 2,
  DVL_TYPE_PISTON: 0,
  DVL_TYPE_PHASED_ARRAY: 1,
}

module.exports = Dvl;
