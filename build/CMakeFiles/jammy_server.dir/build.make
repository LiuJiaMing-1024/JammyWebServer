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
include CMakeFiles/jammy_server.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/jammy_server.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/jammy_server.dir/flags.make

CMakeFiles/jammy_server.dir/src/jammy_server.cpp.o: CMakeFiles/jammy_server.dir/flags.make
CMakeFiles/jammy_server.dir/src/jammy_server.cpp.o: ../src/jammy_server.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ljm/share/jammy_web/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/jammy_server.dir/src/jammy_server.cpp.o"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/jammy_server.dir/src/jammy_server.cpp.o -c /home/ljm/share/jammy_web/src/jammy_server.cpp

CMakeFiles/jammy_server.dir/src/jammy_server.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/jammy_server.dir/src/jammy_server.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ljm/share/jammy_web/src/jammy_server.cpp > CMakeFiles/jammy_server.dir/src/jammy_server.cpp.i

CMakeFiles/jammy_server.dir/src/jammy_server.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/jammy_server.dir/src/jammy_server.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ljm/share/jammy_web/src/jammy_server.cpp -o CMakeFiles/jammy_server.dir/src/jammy_server.cpp.s

CMakeFiles/jammy_server.dir/src/server_tool.cpp.o: CMakeFiles/jammy_server.dir/flags.make
CMakeFiles/jammy_server.dir/src/server_tool.cpp.o: ../src/server_tool.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ljm/share/jammy_web/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/jammy_server.dir/src/server_tool.cpp.o"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/jammy_server.dir/src/server_tool.cpp.o -c /home/ljm/share/jammy_web/src/server_tool.cpp

CMakeFiles/jammy_server.dir/src/server_tool.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/jammy_server.dir/src/server_tool.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ljm/share/jammy_web/src/server_tool.cpp > CMakeFiles/jammy_server.dir/src/server_tool.cpp.i

CMakeFiles/jammy_server.dir/src/server_tool.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/jammy_server.dir/src/server_tool.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ljm/share/jammy_web/src/server_tool.cpp -o CMakeFiles/jammy_server.dir/src/server_tool.cpp.s

CMakeFiles/jammy_server.dir/src/JammyHttpRequest.cpp.o: CMakeFiles/jammy_server.dir/flags.make
CMakeFiles/jammy_server.dir/src/JammyHttpRequest.cpp.o: ../src/JammyHttpRequest.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ljm/share/jammy_web/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/jammy_server.dir/src/JammyHttpRequest.cpp.o"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/jammy_server.dir/src/JammyHttpRequest.cpp.o -c /home/ljm/share/jammy_web/src/JammyHttpRequest.cpp

CMakeFiles/jammy_server.dir/src/JammyHttpRequest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/jammy_server.dir/src/JammyHttpRequest.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ljm/share/jammy_web/src/JammyHttpRequest.cpp > CMakeFiles/jammy_server.dir/src/JammyHttpRequest.cpp.i

CMakeFiles/jammy_server.dir/src/JammyHttpRequest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/jammy_server.dir/src/JammyHttpRequest.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ljm/share/jammy_web/src/JammyHttpRequest.cpp -o CMakeFiles/jammy_server.dir/src/JammyHttpRequest.cpp.s

# Object files for target jammy_server
jammy_server_OBJECTS = \
"CMakeFiles/jammy_server.dir/src/jammy_server.cpp.o" \
"CMakeFiles/jammy_server.dir/src/server_tool.cpp.o" \
"CMakeFiles/jammy_server.dir/src/JammyHttpRequest.cpp.o"

# External object files for target jammy_server
jammy_server_EXTERNAL_OBJECTS =

jammy_server: CMakeFiles/jammy_server.dir/src/jammy_server.cpp.o
jammy_server: CMakeFiles/jammy_server.dir/src/server_tool.cpp.o
jammy_server: CMakeFiles/jammy_server.dir/src/JammyHttpRequest.cpp.o
jammy_server: CMakeFiles/jammy_server.dir/build.make
jammy_server: CMakeFiles/jammy_server.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ljm/share/jammy_web/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable jammy_server"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/jammy_server.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/jammy_server.dir/build: jammy_server

.PHONY : CMakeFiles/jammy_server.dir/build

CMakeFiles/jammy_server.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/jammy_server.dir/cmake_clean.cmake
.PHONY : CMakeFiles/jammy_server.dir/clean

CMakeFiles/jammy_server.dir/depend:
	cd /home/ljm/share/jammy_web/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ljm/share/jammy_web /home/ljm/share/jammy_web /home/ljm/share/jammy_web/build /home/ljm/share/jammy_web/build /home/ljm/share/jammy_web/build/CMakeFiles/jammy_server.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/jammy_server.dir/depend

