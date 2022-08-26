# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "mine_picture: 0 messages, 1 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(mine_picture_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/zxp/demo_demo/src/mine_picture/srv/picture.srv" NAME_WE)
add_custom_target(_mine_picture_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mine_picture" "/home/zxp/demo_demo/src/mine_picture/srv/picture.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(mine_picture
  "/home/zxp/demo_demo/src/mine_picture/srv/picture.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mine_picture
)

### Generating Module File
_generate_module_cpp(mine_picture
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mine_picture
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(mine_picture_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(mine_picture_generate_messages mine_picture_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/zxp/demo_demo/src/mine_picture/srv/picture.srv" NAME_WE)
add_dependencies(mine_picture_generate_messages_cpp _mine_picture_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mine_picture_gencpp)
add_dependencies(mine_picture_gencpp mine_picture_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mine_picture_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(mine_picture
  "/home/zxp/demo_demo/src/mine_picture/srv/picture.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mine_picture
)

### Generating Module File
_generate_module_eus(mine_picture
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mine_picture
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(mine_picture_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(mine_picture_generate_messages mine_picture_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/zxp/demo_demo/src/mine_picture/srv/picture.srv" NAME_WE)
add_dependencies(mine_picture_generate_messages_eus _mine_picture_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mine_picture_geneus)
add_dependencies(mine_picture_geneus mine_picture_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mine_picture_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(mine_picture
  "/home/zxp/demo_demo/src/mine_picture/srv/picture.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mine_picture
)

### Generating Module File
_generate_module_lisp(mine_picture
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mine_picture
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(mine_picture_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(mine_picture_generate_messages mine_picture_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/zxp/demo_demo/src/mine_picture/srv/picture.srv" NAME_WE)
add_dependencies(mine_picture_generate_messages_lisp _mine_picture_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mine_picture_genlisp)
add_dependencies(mine_picture_genlisp mine_picture_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mine_picture_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(mine_picture
  "/home/zxp/demo_demo/src/mine_picture/srv/picture.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mine_picture
)

### Generating Module File
_generate_module_nodejs(mine_picture
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mine_picture
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(mine_picture_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(mine_picture_generate_messages mine_picture_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/zxp/demo_demo/src/mine_picture/srv/picture.srv" NAME_WE)
add_dependencies(mine_picture_generate_messages_nodejs _mine_picture_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mine_picture_gennodejs)
add_dependencies(mine_picture_gennodejs mine_picture_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mine_picture_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(mine_picture
  "/home/zxp/demo_demo/src/mine_picture/srv/picture.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mine_picture
)

### Generating Module File
_generate_module_py(mine_picture
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mine_picture
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(mine_picture_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(mine_picture_generate_messages mine_picture_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/zxp/demo_demo/src/mine_picture/srv/picture.srv" NAME_WE)
add_dependencies(mine_picture_generate_messages_py _mine_picture_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mine_picture_genpy)
add_dependencies(mine_picture_genpy mine_picture_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mine_picture_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mine_picture)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mine_picture
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(mine_picture_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mine_picture)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mine_picture
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(mine_picture_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mine_picture)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mine_picture
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(mine_picture_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mine_picture)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mine_picture
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(mine_picture_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mine_picture)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mine_picture\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mine_picture
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(mine_picture_generate_messages_py std_msgs_generate_messages_py)
endif()
