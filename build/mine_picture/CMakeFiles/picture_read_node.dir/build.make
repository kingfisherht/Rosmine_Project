# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/zxp/demo_demo/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/zxp/demo_demo/build

# Include any dependencies generated for this target.
include mine_picture/CMakeFiles/picture_read_node.dir/depend.make

# Include the progress variables for this target.
include mine_picture/CMakeFiles/picture_read_node.dir/progress.make

# Include the compile flags for this target's objects.
include mine_picture/CMakeFiles/picture_read_node.dir/flags.make

mine_picture/CMakeFiles/picture_read_node.dir/src/my_picture_read.cpp.o: mine_picture/CMakeFiles/picture_read_node.dir/flags.make
mine_picture/CMakeFiles/picture_read_node.dir/src/my_picture_read.cpp.o: /home/zxp/demo_demo/src/mine_picture/src/my_picture_read.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zxp/demo_demo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object mine_picture/CMakeFiles/picture_read_node.dir/src/my_picture_read.cpp.o"
	cd /home/zxp/demo_demo/build/mine_picture && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/picture_read_node.dir/src/my_picture_read.cpp.o -c /home/zxp/demo_demo/src/mine_picture/src/my_picture_read.cpp

mine_picture/CMakeFiles/picture_read_node.dir/src/my_picture_read.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/picture_read_node.dir/src/my_picture_read.cpp.i"
	cd /home/zxp/demo_demo/build/mine_picture && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zxp/demo_demo/src/mine_picture/src/my_picture_read.cpp > CMakeFiles/picture_read_node.dir/src/my_picture_read.cpp.i

mine_picture/CMakeFiles/picture_read_node.dir/src/my_picture_read.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/picture_read_node.dir/src/my_picture_read.cpp.s"
	cd /home/zxp/demo_demo/build/mine_picture && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zxp/demo_demo/src/mine_picture/src/my_picture_read.cpp -o CMakeFiles/picture_read_node.dir/src/my_picture_read.cpp.s

mine_picture/CMakeFiles/picture_read_node.dir/src/my_picture_read.cpp.o.requires:

.PHONY : mine_picture/CMakeFiles/picture_read_node.dir/src/my_picture_read.cpp.o.requires

mine_picture/CMakeFiles/picture_read_node.dir/src/my_picture_read.cpp.o.provides: mine_picture/CMakeFiles/picture_read_node.dir/src/my_picture_read.cpp.o.requires
	$(MAKE) -f mine_picture/CMakeFiles/picture_read_node.dir/build.make mine_picture/CMakeFiles/picture_read_node.dir/src/my_picture_read.cpp.o.provides.build
.PHONY : mine_picture/CMakeFiles/picture_read_node.dir/src/my_picture_read.cpp.o.provides

mine_picture/CMakeFiles/picture_read_node.dir/src/my_picture_read.cpp.o.provides.build: mine_picture/CMakeFiles/picture_read_node.dir/src/my_picture_read.cpp.o


mine_picture/CMakeFiles/picture_read_node.dir/src/main.cpp.o: mine_picture/CMakeFiles/picture_read_node.dir/flags.make
mine_picture/CMakeFiles/picture_read_node.dir/src/main.cpp.o: /home/zxp/demo_demo/src/mine_picture/src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zxp/demo_demo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object mine_picture/CMakeFiles/picture_read_node.dir/src/main.cpp.o"
	cd /home/zxp/demo_demo/build/mine_picture && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/picture_read_node.dir/src/main.cpp.o -c /home/zxp/demo_demo/src/mine_picture/src/main.cpp

mine_picture/CMakeFiles/picture_read_node.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/picture_read_node.dir/src/main.cpp.i"
	cd /home/zxp/demo_demo/build/mine_picture && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zxp/demo_demo/src/mine_picture/src/main.cpp > CMakeFiles/picture_read_node.dir/src/main.cpp.i

mine_picture/CMakeFiles/picture_read_node.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/picture_read_node.dir/src/main.cpp.s"
	cd /home/zxp/demo_demo/build/mine_picture && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zxp/demo_demo/src/mine_picture/src/main.cpp -o CMakeFiles/picture_read_node.dir/src/main.cpp.s

mine_picture/CMakeFiles/picture_read_node.dir/src/main.cpp.o.requires:

.PHONY : mine_picture/CMakeFiles/picture_read_node.dir/src/main.cpp.o.requires

mine_picture/CMakeFiles/picture_read_node.dir/src/main.cpp.o.provides: mine_picture/CMakeFiles/picture_read_node.dir/src/main.cpp.o.requires
	$(MAKE) -f mine_picture/CMakeFiles/picture_read_node.dir/build.make mine_picture/CMakeFiles/picture_read_node.dir/src/main.cpp.o.provides.build
.PHONY : mine_picture/CMakeFiles/picture_read_node.dir/src/main.cpp.o.provides

mine_picture/CMakeFiles/picture_read_node.dir/src/main.cpp.o.provides.build: mine_picture/CMakeFiles/picture_read_node.dir/src/main.cpp.o


# Object files for target picture_read_node
picture_read_node_OBJECTS = \
"CMakeFiles/picture_read_node.dir/src/my_picture_read.cpp.o" \
"CMakeFiles/picture_read_node.dir/src/main.cpp.o"

# External object files for target picture_read_node
picture_read_node_EXTERNAL_OBJECTS =

/home/zxp/demo_demo/devel/lib/mine_picture/picture_read_node: mine_picture/CMakeFiles/picture_read_node.dir/src/my_picture_read.cpp.o
/home/zxp/demo_demo/devel/lib/mine_picture/picture_read_node: mine_picture/CMakeFiles/picture_read_node.dir/src/main.cpp.o
/home/zxp/demo_demo/devel/lib/mine_picture/picture_read_node: mine_picture/CMakeFiles/picture_read_node.dir/build.make
/home/zxp/demo_demo/devel/lib/mine_picture/picture_read_node: /opt/ros/melodic/lib/libimage_transport.so
/home/zxp/demo_demo/devel/lib/mine_picture/picture_read_node: /opt/ros/melodic/lib/libmessage_filters.so
/home/zxp/demo_demo/devel/lib/mine_picture/picture_read_node: /opt/ros/melodic/lib/libclass_loader.so
/home/zxp/demo_demo/devel/lib/mine_picture/picture_read_node: /usr/lib/libPocoFoundation.so
/home/zxp/demo_demo/devel/lib/mine_picture/picture_read_node: /usr/lib/x86_64-linux-gnu/libdl.so
/home/zxp/demo_demo/devel/lib/mine_picture/picture_read_node: /opt/ros/melodic/lib/libroscpp.so
/home/zxp/demo_demo/devel/lib/mine_picture/picture_read_node: /opt/ros/melodic/lib/libxmlrpcpp.so
/home/zxp/demo_demo/devel/lib/mine_picture/picture_read_node: /opt/ros/melodic/lib/libroslib.so
/home/zxp/demo_demo/devel/lib/mine_picture/picture_read_node: /opt/ros/melodic/lib/librospack.so
/home/zxp/demo_demo/devel/lib/mine_picture/picture_read_node: /usr/lib/x86_64-linux-gnu/libpython2.7.so
/home/zxp/demo_demo/devel/lib/mine_picture/picture_read_node: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/zxp/demo_demo/devel/lib/mine_picture/picture_read_node: /usr/lib/x86_64-linux-gnu/libboost_program_options.so
/home/zxp/demo_demo/devel/lib/mine_picture/picture_read_node: /usr/lib/x86_64-linux-gnu/libtinyxml2.so
/home/zxp/demo_demo/devel/lib/mine_picture/picture_read_node: /opt/ros/melodic/lib/libcv_bridge.so
/home/zxp/demo_demo/devel/lib/mine_picture/picture_read_node: /usr/lib/x86_64-linux-gnu/libopencv_core.so.3.2.0
/home/zxp/demo_demo/devel/lib/mine_picture/picture_read_node: /usr/lib/x86_64-linux-gnu/libopencv_imgproc.so.3.2.0
/home/zxp/demo_demo/devel/lib/mine_picture/picture_read_node: /usr/lib/x86_64-linux-gnu/libopencv_imgcodecs.so.3.2.0
/home/zxp/demo_demo/devel/lib/mine_picture/picture_read_node: /opt/ros/melodic/lib/librosconsole.so
/home/zxp/demo_demo/devel/lib/mine_picture/picture_read_node: /opt/ros/melodic/lib/librosconsole_log4cxx.so
/home/zxp/demo_demo/devel/lib/mine_picture/picture_read_node: /opt/ros/melodic/lib/librosconsole_backend_interface.so
/home/zxp/demo_demo/devel/lib/mine_picture/picture_read_node: /usr/lib/x86_64-linux-gnu/liblog4cxx.so
/home/zxp/demo_demo/devel/lib/mine_picture/picture_read_node: /usr/lib/x86_64-linux-gnu/libboost_regex.so
/home/zxp/demo_demo/devel/lib/mine_picture/picture_read_node: /opt/ros/melodic/lib/libroscpp_serialization.so
/home/zxp/demo_demo/devel/lib/mine_picture/picture_read_node: /opt/ros/melodic/lib/librostime.so
/home/zxp/demo_demo/devel/lib/mine_picture/picture_read_node: /opt/ros/melodic/lib/libcpp_common.so
/home/zxp/demo_demo/devel/lib/mine_picture/picture_read_node: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/zxp/demo_demo/devel/lib/mine_picture/picture_read_node: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/zxp/demo_demo/devel/lib/mine_picture/picture_read_node: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
/home/zxp/demo_demo/devel/lib/mine_picture/picture_read_node: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/zxp/demo_demo/devel/lib/mine_picture/picture_read_node: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
/home/zxp/demo_demo/devel/lib/mine_picture/picture_read_node: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/zxp/demo_demo/devel/lib/mine_picture/picture_read_node: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so.0.4
/home/zxp/demo_demo/devel/lib/mine_picture/picture_read_node: /usr/lib/x86_64-linux-gnu/libopencv_shape.so.3.2.0
/home/zxp/demo_demo/devel/lib/mine_picture/picture_read_node: /usr/lib/x86_64-linux-gnu/libopencv_stitching.so.3.2.0
/home/zxp/demo_demo/devel/lib/mine_picture/picture_read_node: /usr/lib/x86_64-linux-gnu/libopencv_superres.so.3.2.0
/home/zxp/demo_demo/devel/lib/mine_picture/picture_read_node: /usr/lib/x86_64-linux-gnu/libopencv_videostab.so.3.2.0
/home/zxp/demo_demo/devel/lib/mine_picture/picture_read_node: /usr/lib/x86_64-linux-gnu/libopencv_aruco.so.3.2.0
/home/zxp/demo_demo/devel/lib/mine_picture/picture_read_node: /usr/lib/x86_64-linux-gnu/libopencv_bgsegm.so.3.2.0
/home/zxp/demo_demo/devel/lib/mine_picture/picture_read_node: /usr/lib/x86_64-linux-gnu/libopencv_bioinspired.so.3.2.0
/home/zxp/demo_demo/devel/lib/mine_picture/picture_read_node: /usr/lib/x86_64-linux-gnu/libopencv_ccalib.so.3.2.0
/home/zxp/demo_demo/devel/lib/mine_picture/picture_read_node: /usr/lib/x86_64-linux-gnu/libopencv_datasets.so.3.2.0
/home/zxp/demo_demo/devel/lib/mine_picture/picture_read_node: /usr/lib/x86_64-linux-gnu/libopencv_dpm.so.3.2.0
/home/zxp/demo_demo/devel/lib/mine_picture/picture_read_node: /usr/lib/x86_64-linux-gnu/libopencv_face.so.3.2.0
/home/zxp/demo_demo/devel/lib/mine_picture/picture_read_node: /usr/lib/x86_64-linux-gnu/libopencv_freetype.so.3.2.0
/home/zxp/demo_demo/devel/lib/mine_picture/picture_read_node: /usr/lib/x86_64-linux-gnu/libopencv_fuzzy.so.3.2.0
/home/zxp/demo_demo/devel/lib/mine_picture/picture_read_node: /usr/lib/x86_64-linux-gnu/libopencv_hdf.so.3.2.0
/home/zxp/demo_demo/devel/lib/mine_picture/picture_read_node: /usr/lib/x86_64-linux-gnu/libopencv_line_descriptor.so.3.2.0
/home/zxp/demo_demo/devel/lib/mine_picture/picture_read_node: /usr/lib/x86_64-linux-gnu/libopencv_optflow.so.3.2.0
/home/zxp/demo_demo/devel/lib/mine_picture/picture_read_node: /usr/lib/x86_64-linux-gnu/libopencv_plot.so.3.2.0
/home/zxp/demo_demo/devel/lib/mine_picture/picture_read_node: /usr/lib/x86_64-linux-gnu/libopencv_reg.so.3.2.0
/home/zxp/demo_demo/devel/lib/mine_picture/picture_read_node: /usr/lib/x86_64-linux-gnu/libopencv_saliency.so.3.2.0
/home/zxp/demo_demo/devel/lib/mine_picture/picture_read_node: /usr/lib/x86_64-linux-gnu/libopencv_stereo.so.3.2.0
/home/zxp/demo_demo/devel/lib/mine_picture/picture_read_node: /usr/lib/x86_64-linux-gnu/libopencv_structured_light.so.3.2.0
/home/zxp/demo_demo/devel/lib/mine_picture/picture_read_node: /usr/lib/x86_64-linux-gnu/libopencv_surface_matching.so.3.2.0
/home/zxp/demo_demo/devel/lib/mine_picture/picture_read_node: /usr/lib/x86_64-linux-gnu/libopencv_text.so.3.2.0
/home/zxp/demo_demo/devel/lib/mine_picture/picture_read_node: /usr/lib/x86_64-linux-gnu/libopencv_ximgproc.so.3.2.0
/home/zxp/demo_demo/devel/lib/mine_picture/picture_read_node: /usr/lib/x86_64-linux-gnu/libopencv_xobjdetect.so.3.2.0
/home/zxp/demo_demo/devel/lib/mine_picture/picture_read_node: /usr/lib/x86_64-linux-gnu/libopencv_xphoto.so.3.2.0
/home/zxp/demo_demo/devel/lib/mine_picture/picture_read_node: /usr/lib/x86_64-linux-gnu/libopencv_video.so.3.2.0
/home/zxp/demo_demo/devel/lib/mine_picture/picture_read_node: /usr/lib/x86_64-linux-gnu/libopencv_viz.so.3.2.0
/home/zxp/demo_demo/devel/lib/mine_picture/picture_read_node: /usr/lib/x86_64-linux-gnu/libopencv_phase_unwrapping.so.3.2.0
/home/zxp/demo_demo/devel/lib/mine_picture/picture_read_node: /usr/lib/x86_64-linux-gnu/libopencv_rgbd.so.3.2.0
/home/zxp/demo_demo/devel/lib/mine_picture/picture_read_node: /usr/lib/x86_64-linux-gnu/libopencv_calib3d.so.3.2.0
/home/zxp/demo_demo/devel/lib/mine_picture/picture_read_node: /usr/lib/x86_64-linux-gnu/libopencv_features2d.so.3.2.0
/home/zxp/demo_demo/devel/lib/mine_picture/picture_read_node: /usr/lib/x86_64-linux-gnu/libopencv_flann.so.3.2.0
/home/zxp/demo_demo/devel/lib/mine_picture/picture_read_node: /usr/lib/x86_64-linux-gnu/libopencv_objdetect.so.3.2.0
/home/zxp/demo_demo/devel/lib/mine_picture/picture_read_node: /usr/lib/x86_64-linux-gnu/libopencv_ml.so.3.2.0
/home/zxp/demo_demo/devel/lib/mine_picture/picture_read_node: /usr/lib/x86_64-linux-gnu/libopencv_highgui.so.3.2.0
/home/zxp/demo_demo/devel/lib/mine_picture/picture_read_node: /usr/lib/x86_64-linux-gnu/libopencv_photo.so.3.2.0
/home/zxp/demo_demo/devel/lib/mine_picture/picture_read_node: /usr/lib/x86_64-linux-gnu/libopencv_videoio.so.3.2.0
/home/zxp/demo_demo/devel/lib/mine_picture/picture_read_node: /usr/lib/x86_64-linux-gnu/libopencv_imgcodecs.so.3.2.0
/home/zxp/demo_demo/devel/lib/mine_picture/picture_read_node: /usr/lib/x86_64-linux-gnu/libopencv_imgproc.so.3.2.0
/home/zxp/demo_demo/devel/lib/mine_picture/picture_read_node: /usr/lib/x86_64-linux-gnu/libopencv_core.so.3.2.0
/home/zxp/demo_demo/devel/lib/mine_picture/picture_read_node: mine_picture/CMakeFiles/picture_read_node.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/zxp/demo_demo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable /home/zxp/demo_demo/devel/lib/mine_picture/picture_read_node"
	cd /home/zxp/demo_demo/build/mine_picture && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/picture_read_node.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
mine_picture/CMakeFiles/picture_read_node.dir/build: /home/zxp/demo_demo/devel/lib/mine_picture/picture_read_node

.PHONY : mine_picture/CMakeFiles/picture_read_node.dir/build

mine_picture/CMakeFiles/picture_read_node.dir/requires: mine_picture/CMakeFiles/picture_read_node.dir/src/my_picture_read.cpp.o.requires
mine_picture/CMakeFiles/picture_read_node.dir/requires: mine_picture/CMakeFiles/picture_read_node.dir/src/main.cpp.o.requires

.PHONY : mine_picture/CMakeFiles/picture_read_node.dir/requires

mine_picture/CMakeFiles/picture_read_node.dir/clean:
	cd /home/zxp/demo_demo/build/mine_picture && $(CMAKE_COMMAND) -P CMakeFiles/picture_read_node.dir/cmake_clean.cmake
.PHONY : mine_picture/CMakeFiles/picture_read_node.dir/clean

mine_picture/CMakeFiles/picture_read_node.dir/depend:
	cd /home/zxp/demo_demo/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/zxp/demo_demo/src /home/zxp/demo_demo/src/mine_picture /home/zxp/demo_demo/build /home/zxp/demo_demo/build/mine_picture /home/zxp/demo_demo/build/mine_picture/CMakeFiles/picture_read_node.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : mine_picture/CMakeFiles/picture_read_node.dir/depend
