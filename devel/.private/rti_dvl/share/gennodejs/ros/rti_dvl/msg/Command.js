// Auto-generated. Do not edit!

// (in-package rti_dvl.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Command {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.CEPO = null;
      this.CEAUTOSTART = null;
      this.CEI = null;
      this.C485OUT = null;
      this.C232OUT = null;
      this.CBTON = null;
      this.CBTBB = null;
      this.CBTMX = null;
      this.CBTBL = null;
      this.CBTT = null;
      this.CBTTBP = null;
      this.CBTST = null;
      this.CBTFILT = null;
      this.CWSSC = null;
      this.CWS = null;
      this.CWT = null;
      this.CTD = null;
      this.CWSS = null;
      this.CHO = null;
      this.CHS = null;
      this.CTS = null;
      this.CVSF = null;
    }
    else {
      if (initObj.hasOwnProperty('CEPO')) {
        this.CEPO = initObj.CEPO
      }
      else {
        this.CEPO = '';
      }
      if (initObj.hasOwnProperty('CEAUTOSTART')) {
        this.CEAUTOSTART = initObj.CEAUTOSTART
      }
      else {
        this.CEAUTOSTART = '';
      }
      if (initObj.hasOwnProperty('CEI')) {
        this.CEI = initObj.CEI
      }
      else {
        this.CEI = '';
      }
      if (initObj.hasOwnProperty('C485OUT')) {
        this.C485OUT = initObj.C485OUT
      }
      else {
        this.C485OUT = '';
      }
      if (initObj.hasOwnProperty('C232OUT')) {
        this.C232OUT = initObj.C232OUT
      }
      else {
        this.C232OUT = '';
      }
      if (initObj.hasOwnProperty('CBTON')) {
        this.CBTON = initObj.CBTON
      }
      else {
        this.CBTON = '';
      }
      if (initObj.hasOwnProperty('CBTBB')) {
        this.CBTBB = initObj.CBTBB
      }
      else {
        this.CBTBB = '';
      }
      if (initObj.hasOwnProperty('CBTMX')) {
        this.CBTMX = initObj.CBTMX
      }
      else {
        this.CBTMX = '';
      }
      if (initObj.hasOwnProperty('CBTBL')) {
        this.CBTBL = initObj.CBTBL
      }
      else {
        this.CBTBL = '';
      }
      if (initObj.hasOwnProperty('CBTT')) {
        this.CBTT = initObj.CBTT
      }
      else {
        this.CBTT = '';
      }
      if (initObj.hasOwnProperty('CBTTBP')) {
        this.CBTTBP = initObj.CBTTBP
      }
      else {
        this.CBTTBP = '';
      }
      if (initObj.hasOwnProperty('CBTST')) {
        this.CBTST = initObj.CBTST
      }
      else {
        this.CBTST = '';
      }
      if (initObj.hasOwnProperty('CBTFILT')) {
        this.CBTFILT = initObj.CBTFILT
      }
      else {
        this.CBTFILT = '';
      }
      if (initObj.hasOwnProperty('CWSSC')) {
        this.CWSSC = initObj.CWSSC
      }
      else {
        this.CWSSC = '';
      }
      if (initObj.hasOwnProperty('CWS')) {
        this.CWS = initObj.CWS
      }
      else {
        this.CWS = '';
      }
      if (initObj.hasOwnProperty('CWT')) {
        this.CWT = initObj.CWT
      }
      else {
        this.CWT = '';
      }
      if (initObj.hasOwnProperty('CTD')) {
        this.CTD = initObj.CTD
      }
      else {
        this.CTD = '';
      }
      if (initObj.hasOwnProperty('CWSS')) {
        this.CWSS = initObj.CWSS
      }
      else {
        this.CWSS = '';
      }
      if (initObj.hasOwnProperty('CHO')) {
        this.CHO = initObj.CHO
      }
      else {
        this.CHO = '';
      }
      if (initObj.hasOwnProperty('CHS')) {
        this.CHS = initObj.CHS
      }
      else {
        this.CHS = '';
      }
      if (initObj.hasOwnProperty('CTS')) {
        this.CTS = initObj.CTS
      }
      else {
        this.CTS = '';
      }
      if (initObj.hasOwnProperty('CVSF')) {
        this.CVSF = initObj.CVSF
      }
      else {
        this.CVSF = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Command
    // Serialize message field [CEPO]
    bufferOffset = _serializer.string(obj.CEPO, buffer, bufferOffset);
    // Serialize message field [CEAUTOSTART]
    bufferOffset = _serializer.string(obj.CEAUTOSTART, buffer, bufferOffset);
    // Serialize message field [CEI]
    bufferOffset = _serializer.string(obj.CEI, buffer, bufferOffset);
    // Serialize message field [C485OUT]
    bufferOffset = _serializer.string(obj.C485OUT, buffer, bufferOffset);
    // Serialize message field [C232OUT]
    bufferOffset = _serializer.string(obj.C232OUT, buffer, bufferOffset);
    // Serialize message field [CBTON]
    bufferOffset = _serializer.string(obj.CBTON, buffer, bufferOffset);
    // Serialize message field [CBTBB]
    bufferOffset = _serializer.string(obj.CBTBB, buffer, bufferOffset);
    // Serialize message field [CBTMX]
    bufferOffset = _serializer.string(obj.CBTMX, buffer, bufferOffset);
    // Serialize message field [CBTBL]
    bufferOffset = _serializer.string(obj.CBTBL, buffer, bufferOffset);
    // Serialize message field [CBTT]
    bufferOffset = _serializer.string(obj.CBTT, buffer, bufferOffset);
    // Serialize message field [CBTTBP]
    bufferOffset = _serializer.string(obj.CBTTBP, buffer, bufferOffset);
    // Serialize message field [CBTST]
    bufferOffset = _serializer.string(obj.CBTST, buffer, bufferOffset);
    // Serialize message field [CBTFILT]
    bufferOffset = _serializer.string(obj.CBTFILT, buffer, bufferOffset);
    // Serialize message field [CWSSC]
    bufferOffset = _serializer.string(obj.CWSSC, buffer, bufferOffset);
    // Serialize message field [CWS]
    bufferOffset = _serializer.string(obj.CWS, buffer, bufferOffset);
    // Serialize message field [CWT]
    bufferOffset = _serializer.string(obj.CWT, buffer, bufferOffset);
    // Serialize message field [CTD]
    bufferOffset = _serializer.string(obj.CTD, buffer, bufferOffset);
    // Serialize message field [CWSS]
    bufferOffset = _serializer.string(obj.CWSS, buffer, bufferOffset);
    // Serialize message field [CHO]
    bufferOffset = _serializer.string(obj.CHO, buffer, bufferOffset);
    // Serialize message field [CHS]
    bufferOffset = _serializer.string(obj.CHS, buffer, bufferOffset);
    // Serialize message field [CTS]
    bufferOffset = _serializer.string(obj.CTS, buffer, bufferOffset);
    // Serialize message field [CVSF]
    bufferOffset = _serializer.string(obj.CVSF, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Command
    let len;
    let data = new Command(null);
    // Deserialize message field [CEPO]
    data.CEPO = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [CEAUTOSTART]
    data.CEAUTOSTART = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [CEI]
    data.CEI = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [C485OUT]
    data.C485OUT = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [C232OUT]
    data.C232OUT = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [CBTON]
    data.CBTON = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [CBTBB]
    data.CBTBB = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [CBTMX]
    data.CBTMX = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [CBTBL]
    data.CBTBL = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [CBTT]
    data.CBTT = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [CBTTBP]
    data.CBTTBP = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [CBTST]
    data.CBTST = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [CBTFILT]
    data.CBTFILT = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [CWSSC]
    data.CWSSC = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [CWS]
    data.CWS = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [CWT]
    data.CWT = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [CTD]
    data.CTD = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [CWSS]
    data.CWSS = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [CHO]
    data.CHO = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [CHS]
    data.CHS = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [CTS]
    data.CTS = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [CVSF]
    data.CVSF = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.CEPO);
    length += _getByteLength(object.CEAUTOSTART);
    length += _getByteLength(object.CEI);
    length += _getByteLength(object.C485OUT);
    length += _getByteLength(object.C232OUT);
    length += _getByteLength(object.CBTON);
    length += _getByteLength(object.CBTBB);
    length += _getByteLength(object.CBTMX);
    length += _getByteLength(object.CBTBL);
    length += _getByteLength(object.CBTT);
    length += _getByteLength(object.CBTTBP);
    length += _getByteLength(object.CBTST);
    length += _getByteLength(object.CBTFILT);
    length += _getByteLength(object.CWSSC);
    length += _getByteLength(object.CWS);
    length += _getByteLength(object.CWT);
    length += _getByteLength(object.CTD);
    length += _getByteLength(object.CWSS);
    length += _getByteLength(object.CHO);
    length += _getByteLength(object.CHS);
    length += _getByteLength(object.CTS);
    length += _getByteLength(object.CVSF);
    return length + 88;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rti_dvl/Command';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b4a778ac84916e4541ed9df1cd1fc61c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Command(null);
    if (msg.CEPO !== undefined) {
      resolved.CEPO = msg.CEPO;
    }
    else {
      resolved.CEPO = ''
    }

    if (msg.CEAUTOSTART !== undefined) {
      resolved.CEAUTOSTART = msg.CEAUTOSTART;
    }
    else {
      resolved.CEAUTOSTART = ''
    }

    if (msg.CEI !== undefined) {
      resolved.CEI = msg.CEI;
    }
    else {
      resolved.CEI = ''
    }

    if (msg.C485OUT !== undefined) {
      resolved.C485OUT = msg.C485OUT;
    }
    else {
      resolved.C485OUT = ''
    }

    if (msg.C232OUT !== undefined) {
      resolved.C232OUT = msg.C232OUT;
    }
    else {
      resolved.C232OUT = ''
    }

    if (msg.CBTON !== undefined) {
      resolved.CBTON = msg.CBTON;
    }
    else {
      resolved.CBTON = ''
    }

    if (msg.CBTBB !== undefined) {
      resolved.CBTBB = msg.CBTBB;
    }
    else {
      resolved.CBTBB = ''
    }

    if (msg.CBTMX !== undefined) {
      resolved.CBTMX = msg.CBTMX;
    }
    else {
      resolved.CBTMX = ''
    }

    if (msg.CBTBL !== undefined) {
      resolved.CBTBL = msg.CBTBL;
    }
    else {
      resolved.CBTBL = ''
    }

    if (msg.CBTT !== undefined) {
      resolved.CBTT = msg.CBTT;
    }
    else {
      resolved.CBTT = ''
    }

    if (msg.CBTTBP !== undefined) {
      resolved.CBTTBP = msg.CBTTBP;
    }
    else {
      resolved.CBTTBP = ''
    }

    if (msg.CBTST !== undefined) {
      resolved.CBTST = msg.CBTST;
    }
    else {
      resolved.CBTST = ''
    }

    if (msg.CBTFILT !== undefined) {
      resolved.CBTFILT = msg.CBTFILT;
    }
    else {
      resolved.CBTFILT = ''
    }

    if (msg.CWSSC !== undefined) {
      resolved.CWSSC = msg.CWSSC;
    }
    else {
      resolved.CWSSC = ''
    }

    if (msg.CWS !== undefined) {
      resolved.CWS = msg.CWS;
    }
    else {
      resolved.CWS = ''
    }

    if (msg.CWT !== undefined) {
      resolved.CWT = msg.CWT;
    }
    else {
      resolved.CWT = ''
    }

    if (msg.CTD !== undefined) {
      resolved.CTD = msg.CTD;
    }
    else {
      resolved.CTD = ''
    }

    if (msg.CWSS !== undefined) {
      resolved.CWSS = msg.CWSS;
    }
    else {
      resolved.CWSS = ''
    }

    if (msg.CHO !== undefined) {
      resolved.CHO = msg.CHO;
    }
    else {
      resolved.CHO = ''
    }

    if (msg.CHS !== undefined) {
      resolved.CHS = msg.CHS;
    }
    else {
      resolved.CHS = ''
    }

    if (msg.CTS !== undefined) {
      resolved.CTS = msg.CTS;
    }
    else {
      resolved.CTS = ''
    }

    if (msg.CVSF !== undefined) {
      resolved.CVSF = msg.CVSF;
    }
    else {
      resolved.CVSF = ''
    }

    return resolved;
    }
};

module.exports = Command;
