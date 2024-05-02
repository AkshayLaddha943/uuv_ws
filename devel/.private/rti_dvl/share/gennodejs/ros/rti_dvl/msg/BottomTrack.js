// Auto-generated. Do not edit!

// (in-package rti_dvl.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Command = require('./Command.js');
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class BottomTrack {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.command = null;
      this.sample = null;
      this.time = null;
      this.velocity = null;
      this.orientation = null;
      this.temperature = null;
      this.altitude = null;
      this.pressure = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('command')) {
        this.command = initObj.command
      }
      else {
        this.command = new Command();
      }
      if (initObj.hasOwnProperty('sample')) {
        this.sample = initObj.sample
      }
      else {
        this.sample = 0;
      }
      if (initObj.hasOwnProperty('time')) {
        this.time = initObj.time
      }
      else {
        this.time = 0.0;
      }
      if (initObj.hasOwnProperty('velocity')) {
        this.velocity = initObj.velocity
      }
      else {
        this.velocity = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('orientation')) {
        this.orientation = initObj.orientation
      }
      else {
        this.orientation = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('temperature')) {
        this.temperature = initObj.temperature
      }
      else {
        this.temperature = 0.0;
      }
      if (initObj.hasOwnProperty('altitude')) {
        this.altitude = initObj.altitude
      }
      else {
        this.altitude = 0.0;
      }
      if (initObj.hasOwnProperty('pressure')) {
        this.pressure = initObj.pressure
      }
      else {
        this.pressure = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BottomTrack
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [command]
    bufferOffset = Command.serialize(obj.command, buffer, bufferOffset);
    // Serialize message field [sample]
    bufferOffset = _serializer.uint64(obj.sample, buffer, bufferOffset);
    // Serialize message field [time]
    bufferOffset = _serializer.float64(obj.time, buffer, bufferOffset);
    // Serialize message field [velocity]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.velocity, buffer, bufferOffset);
    // Serialize message field [orientation]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.orientation, buffer, bufferOffset);
    // Serialize message field [temperature]
    bufferOffset = _serializer.float64(obj.temperature, buffer, bufferOffset);
    // Serialize message field [altitude]
    bufferOffset = _serializer.float64(obj.altitude, buffer, bufferOffset);
    // Serialize message field [pressure]
    bufferOffset = _serializer.float64(obj.pressure, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BottomTrack
    let len;
    let data = new BottomTrack(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [command]
    data.command = Command.deserialize(buffer, bufferOffset);
    // Deserialize message field [sample]
    data.sample = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [time]
    data.time = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [velocity]
    data.velocity = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [orientation]
    data.orientation = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [temperature]
    data.temperature = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [altitude]
    data.altitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [pressure]
    data.pressure = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += Command.getMessageSize(object.command);
    return length + 88;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rti_dvl/BottomTrack';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e236d20adc4e75be05aff82938ad572b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    rti_dvl/Command command
    
    # Sample number
    uint64 sample
    # Start time of the sample in second
    float64 time
    # Velocity in m/s in body frame
    geometry_msgs/Vector3 velocity
    # Orientation (roll, pitch, yaw) at the sample
    geometry_msgs/Vector3 orientation
    # Temperature in Celsius
    float64 temperature
    # Depth below transducer in m
    float64 altitude
    # Pressure in BAR
    float64 pressure
    
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
    MSG: rti_dvl/Command
    # Subsystem Configuration
    # 3: 600 kHz 4 beam 20 degree piston
    string CEPO 
    
    # CEAUTOSTART On/OFF
    # 0	OFF
    # 1	DO NOT USE
    # 2	RS232
    # 3	RS485
    # 4	RS422
    # 5	EMAC
    # 6	UDP
    string CEAUTOSTART
    
    # Ensemble output period in HH:MM:SS.hh
    string CEI
    
    # Output format
    # [1] - RoweTech Binary (RTB)
    # [1] - RoweTech DVL (RTD)
    # [2] - ASCII Format
    # [2] - DVL Format
    # [3] - NMEA Status String
    # [4] - Ocean Server NMEA DVL Format
    # [5] - DVL Format
    # [100] - PD0
    # [103] - PD3 Binary Format
    # [104] - PD4 Binary Format
    # [105] - PD5 Binary Format
    # [106] - PD6 ASCII Format
    # [113] - PD13 ASCII Format
    string C485OUT 
    string C232OUT 
    
    # 1 - Turn ON Bottom Tracking
    # 0 - Turn OFF Bottom Tracking
    string CBTON
    
    # Bottom Track Broadband. Sets Bottom Track coded pulse transmission and lag.
    # n, m, d, x
    # [n] - Transmit Pulse Type and Processing
    #     0 = Narrowband.
    #     Provides long range profiles at the expense of variance.
    #     Not recommended for use with bin size less than the default bin size.
    #     1 = Broadband.
    #     Typically 15% less range than narrow band but has greatly reduced variance (depending on lag length).
    #     Used in conjunction with CWPBP for small bins.
    #     2 = Un-coded Broadband (no ambiguity resolver).
    #     Non-coded has slightly higher variance than the coded transmit without the annoying autocorrelation side peaks. Better for small bins.
    #     4 = Non Coded Broadband pulse-to-pulse (no ambiguity resolver).
    #     Provides ultra low variance for small bin sizes.
    #     7 = Auto Switch (n=0, n=2, n=4)
    # [m] - Lag length in vertical meters (m)
    #     The lag length will set the maximum velocity the ADCP can read. A rule of thumb is to set the lag length, where 1.5 is a 'safety factor'.    
    # [d] - Long Range Narrowband Auto Switch Depth (m)
    #     The depth to switch from Broadband to Narrowband in meters. This is used in the Auto Switch mode.
    # [x] - Beam Multiplex
    #     1 = ping and process each beam one at a time.
    #     2 = ping and process beam pairs.
    #     4 = ping and process all four beams together.
    string CBTBB
    
    # Set the maximum depth to search for the bottom. This will reduce the amount of time in the search algorithm.
    string CBTMX
    
    # Blanking distance for the Bottom Track ping. This is the area that will be ignored just after the ADCP.
    # n.nn, m.mm
    #     [n.nn] - 0 to 10 meters. Sets the vertical distance from the face of the transducer at which the bottom detection algorithm begins searching for the bottom when range to the bottom is LESS than CBTT parameter b.
    #     [m.mm] - 0 to 300 meters. Sets the vertical distance from the face of the transducer at which the bottom detection algorithm begins searching for the bottom when range to the bottom is GREATER than CBTT parameter b.
    string CBTBL
    
    # Bottom Track thresholds.
    # a,b,c,d
    #     [a] - SNR (dB) Shallow Detection Threshold. SNR(dB) shallow detection threshold. Lowering the SNR counts "a" and/or "c" will allow to the DVL to detect smaller bottom echo at greater range. The consequence is that DVL may false detect the bottom at the wrong range when the bottom signal is weak.
    #     [b] - Depth(m) Shallow Switch. Depth(m) at which the bottom track switches from using the shallow to the deep SNR. Conditions in shallow water (high backscatter) can be different than deep water so "b" allows for two different SNR settings one for shallow ("a") and one for deep ("c").
    #     [c] - SNR(dB) Deep Detection Threshold. SNR(dB) deep detection threshold. Lowering the SNR counts "a" and/or "c" will allow to the DVL to detect smaller bottom echo at greater range. The consequence is that DVL may false detect the bottom at the wrong range when the bottom signal is weak.
    #     [d] - Depth(m) Deep Switch. Depth(m) at which the bottom track switches from low to high gain receive. The ADCP/DVL has a high power transmitter. In shallow water the bottom echo may saturate the receiver input. While this does not harm the system saturation limits the measurable signal level of the bottom echo which can make it difficult to detect the bottom in a high water backscatter environment. The ADCP/DVL places the receiver in low gain when the depth is below the "d" parameter setting. The change in gain is about 40 dB. If you observe the ADCP/DVL having difficulty detecting the bottom near the "d" setting you may need set "d" to a deeper or more shallow depth depending on the depth where the detection is poor. A good rule to follow is a strong bottom echo requires a larger value in d and a weak bottom echo a smaller value.
    string CBTT
    
    # Not used for bottom tracking only
    # This is used to create a pause between the Water Profile and Bottom Track ping. This will allow the Bottom Track ping to die down if it is reverberating and causing interference in the Water Profile ping.
    string CBTTBP
    
    # Set thresholds to mark the data bad. This will give 3 options of forcing data to be bad. This can also be used to make all the data good by settings all the thresholds to 0.
    # c.cc,q.qq,v.vv
    #     [c.cc] - Correlation threshold.
    #     [q.qq] - Error Velocity threshold. Range: m/s
    #     [v.vv] - Velocity threshold. Range: m/s
    string CBTST
    
    # Low pass filtering helps reduce velocity measurement noise
    # a,b,c,d,e
    # We do not recommend that the filter be enabled.
    string CBTFILT
    
    # Water Speed of Sound Control.
    # 1, 2, 3, 4
    #     [1] - Water Temperature Source
    #     [2] - Transducer Depth Source
    #     [3] - Salinity Source
    #     [4] - Speed of Sound Source
    # Choices
    #     0 = Command
    #     1 = Sensor
    #     2 = Internal Calculation.
    string CWSSC
    
    # Water Salinity (ppt). Used in the water speed of sound calculation
    string CWS
    
    # Water Temperature (degrees celsius). Used in the water speed of sound calculation if the temperature sensor is not available.
    string CWT
    
    # Transducer Depth (meters). Used in the water speed of sound calculation.
    string CTD
    
    # Water Speed of Sound (meters per second).
    string CWSS
    
    # This will set the heading offset for the ADCP. The heading offset will be applied to the heading value before it is to be used within the system for calculations. Typically only the first value is given.
    string CHO
    # Heading source. Used to state whether to use no heading, internal compass heading or GPS heading. This value should be set to GPS HDT if you cannot calibrate the compass in its environment.
    string CHS
    # Tilt Source. Set whether to use the tilt from internal compass or no tilt.
    string CTS
    
    # Velocity Scale Factor
    #  n.nn, m.mm
    #     [n.nn] - Water Velocity Scale Factor
    #     [m.mm] - Bottom Track Scale Factor
    string CVSF
    
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
    const resolved = new BottomTrack(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.command !== undefined) {
      resolved.command = Command.Resolve(msg.command)
    }
    else {
      resolved.command = new Command()
    }

    if (msg.sample !== undefined) {
      resolved.sample = msg.sample;
    }
    else {
      resolved.sample = 0
    }

    if (msg.time !== undefined) {
      resolved.time = msg.time;
    }
    else {
      resolved.time = 0.0
    }

    if (msg.velocity !== undefined) {
      resolved.velocity = geometry_msgs.msg.Vector3.Resolve(msg.velocity)
    }
    else {
      resolved.velocity = new geometry_msgs.msg.Vector3()
    }

    if (msg.orientation !== undefined) {
      resolved.orientation = geometry_msgs.msg.Vector3.Resolve(msg.orientation)
    }
    else {
      resolved.orientation = new geometry_msgs.msg.Vector3()
    }

    if (msg.temperature !== undefined) {
      resolved.temperature = msg.temperature;
    }
    else {
      resolved.temperature = 0.0
    }

    if (msg.altitude !== undefined) {
      resolved.altitude = msg.altitude;
    }
    else {
      resolved.altitude = 0.0
    }

    if (msg.pressure !== undefined) {
      resolved.pressure = msg.pressure;
    }
    else {
      resolved.pressure = 0.0
    }

    return resolved;
    }
};

module.exports = BottomTrack;
