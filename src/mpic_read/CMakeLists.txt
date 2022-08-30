cmake_minimum_required(VERSION 3.0.2)
project(mpic_read)

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

# add_service_files(
#   FILES
#   mpicture.srv
# )

# generate_messages(
#   DEPENDENCIES
#   std_msgs
# )

find_package(OpenCV 3 QUIET)

catkin_package(
#  INCLUDE_DIRS include
 LIBRARIES mpic_read
 CATKIN_DEPENDS message_runtime roscpp rospy std_msgs
#  DEPENDS system_lib
)
# add_dependencies(${PROJECT_NAME} ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})

include_directories(
  # include
  ${catkin_INCLUDE_DIRS}
)

# add_executable(${PROJECT_NAME}_node src/pic_read.cpp)
# target_link_libraries(${PROJECT_NAME}_node ${catkin_LIBRARIES} ${OpenCV_LIBS})


# add_executable(mpic_save_node src/pic_write.cpp)
# target_link_libraries(mpic_save_node ${catkin_LIBRARIES} ${OpenCV_LIBS})

