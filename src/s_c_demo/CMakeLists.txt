cmake_minimum_required(VERSION 3.0.2)
project(s_c_demo)


find_package(catkin REQUIRED COMPONENTS
  actionlib
  actionlib_msgs
  roscpp
  genmsg
)


add_action_files(
   DIRECTORY
   action
   FILES
   test.action
 )

generate_messages(
   DEPENDENCIES
   actionlib_msgs
)

catkin_package(

)

# include_directories(
#   ${catkin_INCLUDE_DIRS}
# )

# add_executable(client_test
# 	src/action_client.cpp
# )
# target_link_libraries(client_test
# 	${catkin_LIBRARIES}
# )
# add_executable(server_test
# 	src/action_server.cpp
# )
# target_link_libraries(server_test
# 	${catkin_LIBRARIES}
# )
