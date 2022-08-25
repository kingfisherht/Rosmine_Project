cmake_minimum_required(VERSION 3.0.2)
project(mine_picture)
add_compile_options(-std=c++17)
find_package(catkin REQUIRED COMPONENTS
  roscpp
  rospy
  std_msgs
  genmsg 
  geometry_msgs
  message_generation
  image_transport
  cv_bridge
)

add_service_files(
  FILES
  picture.srv
)

generate_messages(
  DEPENDENCIES
  std_msgs
)

find_package(OpenCV 3 QUIET)

catkin_package(
#  INCLUDE_DIRS include
 LIBRARIES mpic_read
 CATKIN_DEPENDS message_runtime roscpp rospy std_msgs
#  DEPENDS system_lib
)
# add_dependencies(${PROJECT_NAME} ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})

include_directories(
  ${catkin_INCLUDE_DIRS}
  include/
  ${CURL_INCLUDE_DIR}
)



add_executable(picture_read_node src/my_picture_read.cpp src/main.cpp)
target_link_libraries(picture_read_node ${catkin_LIBRARIES} ${OpenCV_LIBS})


add_executable(picture_save_node src/my_picture_write.cpp)
target_link_libraries(picture_save_node ${catkin_LIBRARIES} ${OpenCV_LIBS})

