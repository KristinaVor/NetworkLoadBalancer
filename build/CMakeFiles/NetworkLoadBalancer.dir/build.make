# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
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
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/kristina/GIT_Project/NetworkLoadBalancer

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/kristina/GIT_Project/NetworkLoadBalancer/build

# Include any dependencies generated for this target.
include CMakeFiles/NetworkLoadBalancer.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/NetworkLoadBalancer.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/NetworkLoadBalancer.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/NetworkLoadBalancer.dir/flags.make

CMakeFiles/NetworkLoadBalancer.dir/main.cpp.o: CMakeFiles/NetworkLoadBalancer.dir/flags.make
CMakeFiles/NetworkLoadBalancer.dir/main.cpp.o: ../main.cpp
CMakeFiles/NetworkLoadBalancer.dir/main.cpp.o: CMakeFiles/NetworkLoadBalancer.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kristina/GIT_Project/NetworkLoadBalancer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/NetworkLoadBalancer.dir/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/NetworkLoadBalancer.dir/main.cpp.o -MF CMakeFiles/NetworkLoadBalancer.dir/main.cpp.o.d -o CMakeFiles/NetworkLoadBalancer.dir/main.cpp.o -c /home/kristina/GIT_Project/NetworkLoadBalancer/main.cpp

CMakeFiles/NetworkLoadBalancer.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/NetworkLoadBalancer.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kristina/GIT_Project/NetworkLoadBalancer/main.cpp > CMakeFiles/NetworkLoadBalancer.dir/main.cpp.i

CMakeFiles/NetworkLoadBalancer.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/NetworkLoadBalancer.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kristina/GIT_Project/NetworkLoadBalancer/main.cpp -o CMakeFiles/NetworkLoadBalancer.dir/main.cpp.s

CMakeFiles/NetworkLoadBalancer.dir/load_balancer.cpp.o: CMakeFiles/NetworkLoadBalancer.dir/flags.make
CMakeFiles/NetworkLoadBalancer.dir/load_balancer.cpp.o: ../load_balancer.cpp
CMakeFiles/NetworkLoadBalancer.dir/load_balancer.cpp.o: CMakeFiles/NetworkLoadBalancer.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kristina/GIT_Project/NetworkLoadBalancer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/NetworkLoadBalancer.dir/load_balancer.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/NetworkLoadBalancer.dir/load_balancer.cpp.o -MF CMakeFiles/NetworkLoadBalancer.dir/load_balancer.cpp.o.d -o CMakeFiles/NetworkLoadBalancer.dir/load_balancer.cpp.o -c /home/kristina/GIT_Project/NetworkLoadBalancer/load_balancer.cpp

CMakeFiles/NetworkLoadBalancer.dir/load_balancer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/NetworkLoadBalancer.dir/load_balancer.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kristina/GIT_Project/NetworkLoadBalancer/load_balancer.cpp > CMakeFiles/NetworkLoadBalancer.dir/load_balancer.cpp.i

CMakeFiles/NetworkLoadBalancer.dir/load_balancer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/NetworkLoadBalancer.dir/load_balancer.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kristina/GIT_Project/NetworkLoadBalancer/load_balancer.cpp -o CMakeFiles/NetworkLoadBalancer.dir/load_balancer.cpp.s

# Object files for target NetworkLoadBalancer
NetworkLoadBalancer_OBJECTS = \
"CMakeFiles/NetworkLoadBalancer.dir/main.cpp.o" \
"CMakeFiles/NetworkLoadBalancer.dir/load_balancer.cpp.o"

# External object files for target NetworkLoadBalancer
NetworkLoadBalancer_EXTERNAL_OBJECTS =

NetworkLoadBalancer: CMakeFiles/NetworkLoadBalancer.dir/main.cpp.o
NetworkLoadBalancer: CMakeFiles/NetworkLoadBalancer.dir/load_balancer.cpp.o
NetworkLoadBalancer: CMakeFiles/NetworkLoadBalancer.dir/build.make
NetworkLoadBalancer: CMakeFiles/NetworkLoadBalancer.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/kristina/GIT_Project/NetworkLoadBalancer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable NetworkLoadBalancer"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/NetworkLoadBalancer.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/NetworkLoadBalancer.dir/build: NetworkLoadBalancer
.PHONY : CMakeFiles/NetworkLoadBalancer.dir/build

CMakeFiles/NetworkLoadBalancer.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/NetworkLoadBalancer.dir/cmake_clean.cmake
.PHONY : CMakeFiles/NetworkLoadBalancer.dir/clean

CMakeFiles/NetworkLoadBalancer.dir/depend:
	cd /home/kristina/GIT_Project/NetworkLoadBalancer/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/kristina/GIT_Project/NetworkLoadBalancer /home/kristina/GIT_Project/NetworkLoadBalancer /home/kristina/GIT_Project/NetworkLoadBalancer/build /home/kristina/GIT_Project/NetworkLoadBalancer/build /home/kristina/GIT_Project/NetworkLoadBalancer/build/CMakeFiles/NetworkLoadBalancer.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/NetworkLoadBalancer.dir/depend

