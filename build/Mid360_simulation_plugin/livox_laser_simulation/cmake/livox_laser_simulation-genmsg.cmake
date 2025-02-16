# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "livox_laser_simulation: 2 messages, 0 services")

set(MSG_I_FLAGS "-Ilivox_laser_simulation:/home/tzh/track-flipper/src/Mid360_simulation_plugin/livox_laser_simulation/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(livox_laser_simulation_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/tzh/track-flipper/src/Mid360_simulation_plugin/livox_laser_simulation/msg/CustomPoint.msg" NAME_WE)
add_custom_target(_livox_laser_simulation_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "livox_laser_simulation" "/home/tzh/track-flipper/src/Mid360_simulation_plugin/livox_laser_simulation/msg/CustomPoint.msg" ""
)

get_filename_component(_filename "/home/tzh/track-flipper/src/Mid360_simulation_plugin/livox_laser_simulation/msg/CustomMsg.msg" NAME_WE)
add_custom_target(_livox_laser_simulation_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "livox_laser_simulation" "/home/tzh/track-flipper/src/Mid360_simulation_plugin/livox_laser_simulation/msg/CustomMsg.msg" "std_msgs/Header:livox_laser_simulation/CustomPoint"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(livox_laser_simulation
  "/home/tzh/track-flipper/src/Mid360_simulation_plugin/livox_laser_simulation/msg/CustomPoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/livox_laser_simulation
)
_generate_msg_cpp(livox_laser_simulation
  "/home/tzh/track-flipper/src/Mid360_simulation_plugin/livox_laser_simulation/msg/CustomMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/tzh/track-flipper/src/Mid360_simulation_plugin/livox_laser_simulation/msg/CustomPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/livox_laser_simulation
)

### Generating Services

### Generating Module File
_generate_module_cpp(livox_laser_simulation
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/livox_laser_simulation
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(livox_laser_simulation_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(livox_laser_simulation_generate_messages livox_laser_simulation_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/tzh/track-flipper/src/Mid360_simulation_plugin/livox_laser_simulation/msg/CustomPoint.msg" NAME_WE)
add_dependencies(livox_laser_simulation_generate_messages_cpp _livox_laser_simulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tzh/track-flipper/src/Mid360_simulation_plugin/livox_laser_simulation/msg/CustomMsg.msg" NAME_WE)
add_dependencies(livox_laser_simulation_generate_messages_cpp _livox_laser_simulation_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(livox_laser_simulation_gencpp)
add_dependencies(livox_laser_simulation_gencpp livox_laser_simulation_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS livox_laser_simulation_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(livox_laser_simulation
  "/home/tzh/track-flipper/src/Mid360_simulation_plugin/livox_laser_simulation/msg/CustomPoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/livox_laser_simulation
)
_generate_msg_eus(livox_laser_simulation
  "/home/tzh/track-flipper/src/Mid360_simulation_plugin/livox_laser_simulation/msg/CustomMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/tzh/track-flipper/src/Mid360_simulation_plugin/livox_laser_simulation/msg/CustomPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/livox_laser_simulation
)

### Generating Services

### Generating Module File
_generate_module_eus(livox_laser_simulation
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/livox_laser_simulation
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(livox_laser_simulation_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(livox_laser_simulation_generate_messages livox_laser_simulation_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/tzh/track-flipper/src/Mid360_simulation_plugin/livox_laser_simulation/msg/CustomPoint.msg" NAME_WE)
add_dependencies(livox_laser_simulation_generate_messages_eus _livox_laser_simulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tzh/track-flipper/src/Mid360_simulation_plugin/livox_laser_simulation/msg/CustomMsg.msg" NAME_WE)
add_dependencies(livox_laser_simulation_generate_messages_eus _livox_laser_simulation_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(livox_laser_simulation_geneus)
add_dependencies(livox_laser_simulation_geneus livox_laser_simulation_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS livox_laser_simulation_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(livox_laser_simulation
  "/home/tzh/track-flipper/src/Mid360_simulation_plugin/livox_laser_simulation/msg/CustomPoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/livox_laser_simulation
)
_generate_msg_lisp(livox_laser_simulation
  "/home/tzh/track-flipper/src/Mid360_simulation_plugin/livox_laser_simulation/msg/CustomMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/tzh/track-flipper/src/Mid360_simulation_plugin/livox_laser_simulation/msg/CustomPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/livox_laser_simulation
)

### Generating Services

### Generating Module File
_generate_module_lisp(livox_laser_simulation
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/livox_laser_simulation
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(livox_laser_simulation_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(livox_laser_simulation_generate_messages livox_laser_simulation_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/tzh/track-flipper/src/Mid360_simulation_plugin/livox_laser_simulation/msg/CustomPoint.msg" NAME_WE)
add_dependencies(livox_laser_simulation_generate_messages_lisp _livox_laser_simulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tzh/track-flipper/src/Mid360_simulation_plugin/livox_laser_simulation/msg/CustomMsg.msg" NAME_WE)
add_dependencies(livox_laser_simulation_generate_messages_lisp _livox_laser_simulation_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(livox_laser_simulation_genlisp)
add_dependencies(livox_laser_simulation_genlisp livox_laser_simulation_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS livox_laser_simulation_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(livox_laser_simulation
  "/home/tzh/track-flipper/src/Mid360_simulation_plugin/livox_laser_simulation/msg/CustomPoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/livox_laser_simulation
)
_generate_msg_nodejs(livox_laser_simulation
  "/home/tzh/track-flipper/src/Mid360_simulation_plugin/livox_laser_simulation/msg/CustomMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/tzh/track-flipper/src/Mid360_simulation_plugin/livox_laser_simulation/msg/CustomPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/livox_laser_simulation
)

### Generating Services

### Generating Module File
_generate_module_nodejs(livox_laser_simulation
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/livox_laser_simulation
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(livox_laser_simulation_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(livox_laser_simulation_generate_messages livox_laser_simulation_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/tzh/track-flipper/src/Mid360_simulation_plugin/livox_laser_simulation/msg/CustomPoint.msg" NAME_WE)
add_dependencies(livox_laser_simulation_generate_messages_nodejs _livox_laser_simulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tzh/track-flipper/src/Mid360_simulation_plugin/livox_laser_simulation/msg/CustomMsg.msg" NAME_WE)
add_dependencies(livox_laser_simulation_generate_messages_nodejs _livox_laser_simulation_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(livox_laser_simulation_gennodejs)
add_dependencies(livox_laser_simulation_gennodejs livox_laser_simulation_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS livox_laser_simulation_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(livox_laser_simulation
  "/home/tzh/track-flipper/src/Mid360_simulation_plugin/livox_laser_simulation/msg/CustomPoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/livox_laser_simulation
)
_generate_msg_py(livox_laser_simulation
  "/home/tzh/track-flipper/src/Mid360_simulation_plugin/livox_laser_simulation/msg/CustomMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/tzh/track-flipper/src/Mid360_simulation_plugin/livox_laser_simulation/msg/CustomPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/livox_laser_simulation
)

### Generating Services

### Generating Module File
_generate_module_py(livox_laser_simulation
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/livox_laser_simulation
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(livox_laser_simulation_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(livox_laser_simulation_generate_messages livox_laser_simulation_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/tzh/track-flipper/src/Mid360_simulation_plugin/livox_laser_simulation/msg/CustomPoint.msg" NAME_WE)
add_dependencies(livox_laser_simulation_generate_messages_py _livox_laser_simulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tzh/track-flipper/src/Mid360_simulation_plugin/livox_laser_simulation/msg/CustomMsg.msg" NAME_WE)
add_dependencies(livox_laser_simulation_generate_messages_py _livox_laser_simulation_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(livox_laser_simulation_genpy)
add_dependencies(livox_laser_simulation_genpy livox_laser_simulation_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS livox_laser_simulation_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/livox_laser_simulation)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/livox_laser_simulation
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(livox_laser_simulation_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/livox_laser_simulation)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/livox_laser_simulation
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(livox_laser_simulation_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/livox_laser_simulation)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/livox_laser_simulation
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(livox_laser_simulation_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/livox_laser_simulation)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/livox_laser_simulation
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(livox_laser_simulation_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/livox_laser_simulation)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/livox_laser_simulation\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/livox_laser_simulation
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(livox_laser_simulation_generate_messages_py std_msgs_generate_messages_py)
endif()
