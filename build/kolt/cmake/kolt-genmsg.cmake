# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "kolt: 2 messages, 1 services")

set(MSG_I_FLAGS "-Ikolt:/home/nvidia/catkin_build_ws/src/kolt_ros/msg;-Isensor_msgs:/opt/ros/melodic/share/sensor_msgs/cmake/../msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg;-Ivision_msgs:/home/nvidia/catkin_build_ws/install/share/vision_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(kolt_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/nvidia/catkin_build_ws/src/kolt_ros/msg/ObjectLocation.msg" NAME_WE)
add_custom_target(_kolt_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "kolt" "/home/nvidia/catkin_build_ws/src/kolt_ros/msg/ObjectLocation.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/nvidia/catkin_build_ws/src/kolt_ros/msg/ObjectLocationArray.msg" NAME_WE)
add_custom_target(_kolt_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "kolt" "/home/nvidia/catkin_build_ws/src/kolt_ros/msg/ObjectLocationArray.msg" "kolt/ObjectLocation:std_msgs/Header"
)

get_filename_component(_filename "/home/nvidia/catkin_build_ws/src/kolt_ros/srv/YoloDetect.srv" NAME_WE)
add_custom_target(_kolt_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "kolt" "/home/nvidia/catkin_build_ws/src/kolt_ros/srv/YoloDetect.srv" "vision_msgs/ObjectHypothesisWithPose:sensor_msgs/Image:geometry_msgs/Pose2D:geometry_msgs/Point:geometry_msgs/Pose:geometry_msgs/PoseWithCovariance:std_msgs/Header:vision_msgs/BoundingBox2D:geometry_msgs/Quaternion:vision_msgs/Detection2D:vision_msgs/Detection2DArray"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(kolt
  "/home/nvidia/catkin_build_ws/src/kolt_ros/msg/ObjectLocation.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kolt
)
_generate_msg_cpp(kolt
  "/home/nvidia/catkin_build_ws/src/kolt_ros/msg/ObjectLocationArray.msg"
  "${MSG_I_FLAGS}"
  "/home/nvidia/catkin_build_ws/src/kolt_ros/msg/ObjectLocation.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kolt
)

### Generating Services
_generate_srv_cpp(kolt
  "/home/nvidia/catkin_build_ws/src/kolt_ros/srv/YoloDetect.srv"
  "${MSG_I_FLAGS}"
  "/home/nvidia/catkin_build_ws/install/share/vision_msgs/cmake/../msg/ObjectHypothesisWithPose.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/nvidia/catkin_build_ws/install/share/vision_msgs/cmake/../msg/BoundingBox2D.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/nvidia/catkin_build_ws/install/share/vision_msgs/cmake/../msg/Detection2D.msg;/home/nvidia/catkin_build_ws/install/share/vision_msgs/cmake/../msg/Detection2DArray.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kolt
)

### Generating Module File
_generate_module_cpp(kolt
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kolt
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(kolt_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(kolt_generate_messages kolt_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nvidia/catkin_build_ws/src/kolt_ros/msg/ObjectLocation.msg" NAME_WE)
add_dependencies(kolt_generate_messages_cpp _kolt_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/catkin_build_ws/src/kolt_ros/msg/ObjectLocationArray.msg" NAME_WE)
add_dependencies(kolt_generate_messages_cpp _kolt_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/catkin_build_ws/src/kolt_ros/srv/YoloDetect.srv" NAME_WE)
add_dependencies(kolt_generate_messages_cpp _kolt_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(kolt_gencpp)
add_dependencies(kolt_gencpp kolt_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS kolt_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(kolt
  "/home/nvidia/catkin_build_ws/src/kolt_ros/msg/ObjectLocation.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/kolt
)
_generate_msg_eus(kolt
  "/home/nvidia/catkin_build_ws/src/kolt_ros/msg/ObjectLocationArray.msg"
  "${MSG_I_FLAGS}"
  "/home/nvidia/catkin_build_ws/src/kolt_ros/msg/ObjectLocation.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/kolt
)

### Generating Services
_generate_srv_eus(kolt
  "/home/nvidia/catkin_build_ws/src/kolt_ros/srv/YoloDetect.srv"
  "${MSG_I_FLAGS}"
  "/home/nvidia/catkin_build_ws/install/share/vision_msgs/cmake/../msg/ObjectHypothesisWithPose.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/nvidia/catkin_build_ws/install/share/vision_msgs/cmake/../msg/BoundingBox2D.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/nvidia/catkin_build_ws/install/share/vision_msgs/cmake/../msg/Detection2D.msg;/home/nvidia/catkin_build_ws/install/share/vision_msgs/cmake/../msg/Detection2DArray.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/kolt
)

### Generating Module File
_generate_module_eus(kolt
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/kolt
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(kolt_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(kolt_generate_messages kolt_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nvidia/catkin_build_ws/src/kolt_ros/msg/ObjectLocation.msg" NAME_WE)
add_dependencies(kolt_generate_messages_eus _kolt_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/catkin_build_ws/src/kolt_ros/msg/ObjectLocationArray.msg" NAME_WE)
add_dependencies(kolt_generate_messages_eus _kolt_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/catkin_build_ws/src/kolt_ros/srv/YoloDetect.srv" NAME_WE)
add_dependencies(kolt_generate_messages_eus _kolt_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(kolt_geneus)
add_dependencies(kolt_geneus kolt_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS kolt_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(kolt
  "/home/nvidia/catkin_build_ws/src/kolt_ros/msg/ObjectLocation.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kolt
)
_generate_msg_lisp(kolt
  "/home/nvidia/catkin_build_ws/src/kolt_ros/msg/ObjectLocationArray.msg"
  "${MSG_I_FLAGS}"
  "/home/nvidia/catkin_build_ws/src/kolt_ros/msg/ObjectLocation.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kolt
)

### Generating Services
_generate_srv_lisp(kolt
  "/home/nvidia/catkin_build_ws/src/kolt_ros/srv/YoloDetect.srv"
  "${MSG_I_FLAGS}"
  "/home/nvidia/catkin_build_ws/install/share/vision_msgs/cmake/../msg/ObjectHypothesisWithPose.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/nvidia/catkin_build_ws/install/share/vision_msgs/cmake/../msg/BoundingBox2D.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/nvidia/catkin_build_ws/install/share/vision_msgs/cmake/../msg/Detection2D.msg;/home/nvidia/catkin_build_ws/install/share/vision_msgs/cmake/../msg/Detection2DArray.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kolt
)

### Generating Module File
_generate_module_lisp(kolt
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kolt
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(kolt_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(kolt_generate_messages kolt_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nvidia/catkin_build_ws/src/kolt_ros/msg/ObjectLocation.msg" NAME_WE)
add_dependencies(kolt_generate_messages_lisp _kolt_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/catkin_build_ws/src/kolt_ros/msg/ObjectLocationArray.msg" NAME_WE)
add_dependencies(kolt_generate_messages_lisp _kolt_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/catkin_build_ws/src/kolt_ros/srv/YoloDetect.srv" NAME_WE)
add_dependencies(kolt_generate_messages_lisp _kolt_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(kolt_genlisp)
add_dependencies(kolt_genlisp kolt_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS kolt_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(kolt
  "/home/nvidia/catkin_build_ws/src/kolt_ros/msg/ObjectLocation.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/kolt
)
_generate_msg_nodejs(kolt
  "/home/nvidia/catkin_build_ws/src/kolt_ros/msg/ObjectLocationArray.msg"
  "${MSG_I_FLAGS}"
  "/home/nvidia/catkin_build_ws/src/kolt_ros/msg/ObjectLocation.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/kolt
)

### Generating Services
_generate_srv_nodejs(kolt
  "/home/nvidia/catkin_build_ws/src/kolt_ros/srv/YoloDetect.srv"
  "${MSG_I_FLAGS}"
  "/home/nvidia/catkin_build_ws/install/share/vision_msgs/cmake/../msg/ObjectHypothesisWithPose.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/nvidia/catkin_build_ws/install/share/vision_msgs/cmake/../msg/BoundingBox2D.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/nvidia/catkin_build_ws/install/share/vision_msgs/cmake/../msg/Detection2D.msg;/home/nvidia/catkin_build_ws/install/share/vision_msgs/cmake/../msg/Detection2DArray.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/kolt
)

### Generating Module File
_generate_module_nodejs(kolt
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/kolt
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(kolt_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(kolt_generate_messages kolt_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nvidia/catkin_build_ws/src/kolt_ros/msg/ObjectLocation.msg" NAME_WE)
add_dependencies(kolt_generate_messages_nodejs _kolt_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/catkin_build_ws/src/kolt_ros/msg/ObjectLocationArray.msg" NAME_WE)
add_dependencies(kolt_generate_messages_nodejs _kolt_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/catkin_build_ws/src/kolt_ros/srv/YoloDetect.srv" NAME_WE)
add_dependencies(kolt_generate_messages_nodejs _kolt_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(kolt_gennodejs)
add_dependencies(kolt_gennodejs kolt_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS kolt_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(kolt
  "/home/nvidia/catkin_build_ws/src/kolt_ros/msg/ObjectLocation.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kolt
)
_generate_msg_py(kolt
  "/home/nvidia/catkin_build_ws/src/kolt_ros/msg/ObjectLocationArray.msg"
  "${MSG_I_FLAGS}"
  "/home/nvidia/catkin_build_ws/src/kolt_ros/msg/ObjectLocation.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kolt
)

### Generating Services
_generate_srv_py(kolt
  "/home/nvidia/catkin_build_ws/src/kolt_ros/srv/YoloDetect.srv"
  "${MSG_I_FLAGS}"
  "/home/nvidia/catkin_build_ws/install/share/vision_msgs/cmake/../msg/ObjectHypothesisWithPose.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/nvidia/catkin_build_ws/install/share/vision_msgs/cmake/../msg/BoundingBox2D.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/nvidia/catkin_build_ws/install/share/vision_msgs/cmake/../msg/Detection2D.msg;/home/nvidia/catkin_build_ws/install/share/vision_msgs/cmake/../msg/Detection2DArray.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kolt
)

### Generating Module File
_generate_module_py(kolt
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kolt
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(kolt_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(kolt_generate_messages kolt_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nvidia/catkin_build_ws/src/kolt_ros/msg/ObjectLocation.msg" NAME_WE)
add_dependencies(kolt_generate_messages_py _kolt_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/catkin_build_ws/src/kolt_ros/msg/ObjectLocationArray.msg" NAME_WE)
add_dependencies(kolt_generate_messages_py _kolt_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/catkin_build_ws/src/kolt_ros/srv/YoloDetect.srv" NAME_WE)
add_dependencies(kolt_generate_messages_py _kolt_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(kolt_genpy)
add_dependencies(kolt_genpy kolt_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS kolt_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kolt)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kolt
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(kolt_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(kolt_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET vision_msgs_generate_messages_cpp)
  add_dependencies(kolt_generate_messages_cpp vision_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(kolt_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/kolt)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/kolt
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(kolt_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(kolt_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET vision_msgs_generate_messages_eus)
  add_dependencies(kolt_generate_messages_eus vision_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(kolt_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kolt)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kolt
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(kolt_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(kolt_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET vision_msgs_generate_messages_lisp)
  add_dependencies(kolt_generate_messages_lisp vision_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(kolt_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/kolt)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/kolt
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(kolt_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(kolt_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET vision_msgs_generate_messages_nodejs)
  add_dependencies(kolt_generate_messages_nodejs vision_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(kolt_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kolt)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kolt\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kolt
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(kolt_generate_messages_py sensor_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(kolt_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET vision_msgs_generate_messages_py)
  add_dependencies(kolt_generate_messages_py vision_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(kolt_generate_messages_py geometry_msgs_generate_messages_py)
endif()
