# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_SOURCE_DIR = /home/ljm/share/jammy_web

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ljm/share/jammy_web/build

# Include any dependencies generated for this target.
include CMakeFiles/jammy_client.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/jammy_client.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/jammy_client.dir/flags.make

CMakeFiles/jammy_client.dir/src/jammy_client.cpp.o: CMakeFiles/jammy_client.dir/flags.make
CMakeFiles/jammy_client.dir/src/jammy_client.cpp.o: ../src/jammy_client.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ljm/share/jammy_web/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/jammy_client.dir/src/jammy_client.cpp.o"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/jammy_client.dir/src/jammy_client.cpp.o -c /home/ljm/share/jammy_web/src/jammy_client.cpp

CMakeFiles/jammy_client.dir/src/jammy_client.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/jammy_client.dir/src/jammy_client.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ljm/share/jammy_web/src/jammy_client.cpp > CMakeFiles/jammy_client.dir/src/jammy_client.cpp.i

CMakeFiles/jammy_client.dir/src/jammy_client.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/jammy_client.dir/src/jammy_client.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ljm/share/jammy_web/src/jammy_client.cpp -o CMakeFiles/jammy_client.dir/src/jammy_client.cpp.s

# Object files for target jammy_client
jammy_client_OBJECTS = \
"CMakeFiles/jammy_client.dir/src/jammy_client.cpp.o"

# External object files for target jammy_client
jammy_client_EXTERNAL_OBJECTS =

jammy_client: CMakeFiles/jammy_client.dir/src/jammy_client.cpp.o
jammy_client: CMakeFiles/jammy_client.dir/build.make
jammy_client: CMakeFiles/jammy_client.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ljm/share/jammy_web/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable jammy_client"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/jammy_client.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/jammy_client.dir/build: jammy_client

.PHONY : CMakeFiles/jammy_client.dir/build

CMakeFiles/jammy_client.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/jammy_client.dir/cmake_clean.cmake
.PHONY : CMakeFiles/jammy_client.dir/clean

CMakeFiles/jammy_client.dir/depend:
	cd /home/ljm/share/jammy_web/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ljm/share/jammy_web /home/ljm/share/jammy_web /home/ljm/share/jammy_web/build /home/ljm/share/jammy_web/build /home/ljm/share/jammy_web/build/CMakeFiles/jammy_client.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/jammy_client.dir/depend
