# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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
CMAKE_SOURCE_DIR = /home/ubuntu/Desktop/2015-Vision-Lab/grab_display

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ubuntu/Desktop/2015-Vision-Lab/grab_display

# Include any dependencies generated for this target.
include CMakeFiles/display.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/display.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/display.dir/flags.make

CMakeFiles/display.dir/display.cpp.o: CMakeFiles/display.dir/flags.make
CMakeFiles/display.dir/display.cpp.o: display.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/ubuntu/Desktop/2015-Vision-Lab/grab_display/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/display.dir/display.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/display.dir/display.cpp.o -c /home/ubuntu/Desktop/2015-Vision-Lab/grab_display/display.cpp

CMakeFiles/display.dir/display.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/display.dir/display.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/ubuntu/Desktop/2015-Vision-Lab/grab_display/display.cpp > CMakeFiles/display.dir/display.cpp.i

CMakeFiles/display.dir/display.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/display.dir/display.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/ubuntu/Desktop/2015-Vision-Lab/grab_display/display.cpp -o CMakeFiles/display.dir/display.cpp.s

CMakeFiles/display.dir/display.cpp.o.requires:
.PHONY : CMakeFiles/display.dir/display.cpp.o.requires

CMakeFiles/display.dir/display.cpp.o.provides: CMakeFiles/display.dir/display.cpp.o.requires
	$(MAKE) -f CMakeFiles/display.dir/build.make CMakeFiles/display.dir/display.cpp.o.provides.build
.PHONY : CMakeFiles/display.dir/display.cpp.o.provides

CMakeFiles/display.dir/display.cpp.o.provides.build: CMakeFiles/display.dir/display.cpp.o

# Object files for target display
display_OBJECTS = \
"CMakeFiles/display.dir/display.cpp.o"

# External object files for target display
display_EXTERNAL_OBJECTS =

display: CMakeFiles/display.dir/display.cpp.o
display: CMakeFiles/display.dir/build.make
display: /usr/lib/libopencv_vstab.so.2.4.10
display: /usr/lib/libopencv_tegra.so.2.4.10
display: /usr/lib/libopencv_imuvstab.so.2.4.10
display: /usr/lib/libopencv_facedetect.so.2.4.10
display: /usr/lib/libopencv_esm_panorama.so.2.4.10
display: /usr/lib/libopencv_videostab.so.2.4.10
display: /usr/lib/libopencv_video.so.2.4.10
display: /usr/lib/libopencv_ts.a
display: /usr/lib/libopencv_superres.so.2.4.10
display: /usr/lib/libopencv_stitching.so.2.4.10
display: /usr/lib/libopencv_photo.so.2.4.10
display: /usr/lib/libopencv_objdetect.so.2.4.10
display: /usr/lib/libopencv_ml.so.2.4.10
display: /usr/lib/libopencv_legacy.so.2.4.10
display: /usr/lib/libopencv_imgproc.so.2.4.10
display: /usr/lib/libopencv_highgui.so.2.4.10
display: /usr/lib/libopencv_gpu.so.2.4.10
display: /usr/lib/libopencv_flann.so.2.4.10
display: /usr/lib/libopencv_features2d.so.2.4.10
display: /usr/lib/libopencv_core.so.2.4.10
display: /usr/lib/libopencv_contrib.so.2.4.10
display: /usr/lib/libopencv_calib3d.so.2.4.10
display: /usr/lib/libopencv_tegra.so.2.4.10
display: /usr/lib/libopencv_stitching.so.2.4.10
display: /usr/lib/libopencv_gpu.so.2.4.10
display: /usr/lib/libopencv_photo.so.2.4.10
display: /usr/lib/libopencv_objdetect.so.2.4.10
display: /usr/lib/libopencv_legacy.so.2.4.10
display: /usr/lib/libopencv_video.so.2.4.10
display: /usr/lib/libopencv_ml.so.2.4.10
display: /usr/lib/libopencv_calib3d.so.2.4.10
display: /usr/lib/libopencv_features2d.so.2.4.10
display: /usr/lib/libopencv_highgui.so.2.4.10
display: /usr/lib/libopencv_imgproc.so.2.4.10
display: /usr/lib/libopencv_flann.so.2.4.10
display: /usr/lib/libopencv_core.so.2.4.10
display: CMakeFiles/display.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable display"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/display.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/display.dir/build: display
.PHONY : CMakeFiles/display.dir/build

CMakeFiles/display.dir/requires: CMakeFiles/display.dir/display.cpp.o.requires
.PHONY : CMakeFiles/display.dir/requires

CMakeFiles/display.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/display.dir/cmake_clean.cmake
.PHONY : CMakeFiles/display.dir/clean

CMakeFiles/display.dir/depend:
	cd /home/ubuntu/Desktop/2015-Vision-Lab/grab_display && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ubuntu/Desktop/2015-Vision-Lab/grab_display /home/ubuntu/Desktop/2015-Vision-Lab/grab_display /home/ubuntu/Desktop/2015-Vision-Lab/grab_display /home/ubuntu/Desktop/2015-Vision-Lab/grab_display /home/ubuntu/Desktop/2015-Vision-Lab/grab_display/CMakeFiles/display.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/display.dir/depend
