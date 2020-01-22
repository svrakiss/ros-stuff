// Auto-generated. Do not edit!

// (in-package kolt.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class ObjectLocation {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.x_center = null;
      this.y_center = null;
      this.distance = null;
      this.bearing = null;
      this.true_range = null;
      this.key = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('x_center')) {
        this.x_center = initObj.x_center
      }
      else {
        this.x_center = 0;
      }
      if (initObj.hasOwnProperty('y_center')) {
        this.y_center = initObj.y_center
      }
      else {
        this.y_center = 0;
      }
      if (initObj.hasOwnProperty('distance')) {
        this.distance = initObj.distance
      }
      else {
        this.distance = 0.0;
      }
      if (initObj.hasOwnProperty('bearing')) {
        this.bearing = initObj.bearing
      }
      else {
        this.bearing = 0.0;
      }
      if (initObj.hasOwnProperty('true_range')) {
        this.true_range = initObj.true_range
      }
      else {
        this.true_range = 0.0;
      }
      if (initObj.hasOwnProperty('key')) {
        this.key = initObj.key
      }
      else {
        this.key = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ObjectLocation
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [x_center]
    bufferOffset = _serializer.int32(obj.x_center, buffer, bufferOffset);
    // Serialize message field [y_center]
    bufferOffset = _serializer.int32(obj.y_center, buffer, bufferOffset);
    // Serialize message field [distance]
    bufferOffset = _serializer.float64(obj.distance, buffer, bufferOffset);
    // Serialize message field [bearing]
    bufferOffset = _serializer.float64(obj.bearing, buffer, bufferOffset);
    // Serialize message field [true_range]
    bufferOffset = _serializer.float64(obj.true_range, buffer, bufferOffset);
    // Serialize message field [key]
    bufferOffset = _serializer.string(obj.key, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ObjectLocation
    let len;
    let data = new ObjectLocation(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [x_center]
    data.x_center = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [y_center]
    data.y_center = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [distance]
    data.distance = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [bearing]
    data.bearing = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [true_range]
    data.true_range = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [key]
    data.key = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.key.length;
    return length + 36;
  }

  static datatype() {
    // Returns string type for a message object
    return 'kolt/ObjectLocation';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ae191473540928878a4478822d1a5e8b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Header
    Header header
    
    # Detection object center
    int32 x_center
    int32 y_center
    
    # Distance from the object
    float64 distance
    
    # Bearing of the TurtleBot
    float64 bearing
    
    # True range from the object
    float64 true_range
    
    # The object
    string key
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
    const resolved = new ObjectLocation(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.x_center !== undefined) {
      resolved.x_center = msg.x_center;
    }
    else {
      resolved.x_center = 0
    }

    if (msg.y_center !== undefined) {
      resolved.y_center = msg.y_center;
    }
    else {
      resolved.y_center = 0
    }

    if (msg.distance !== undefined) {
      resolved.distance = msg.distance;
    }
    else {
      resolved.distance = 0.0
    }

    if (msg.bearing !== undefined) {
      resolved.bearing = msg.bearing;
    }
    else {
      resolved.bearing = 0.0
    }

    if (msg.true_range !== undefined) {
      resolved.true_range = msg.true_range;
    }
    else {
      resolved.true_range = 0.0
    }

    if (msg.key !== undefined) {
      resolved.key = msg.key;
    }
    else {
      resolved.key = ''
    }

    return resolved;
    }
};

module.exports = ObjectLocation;
