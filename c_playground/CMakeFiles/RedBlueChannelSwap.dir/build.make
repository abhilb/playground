# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.7

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
CMAKE_SOURCE_DIR = /home/abhilash/Projects/playground/c_playground

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/abhilash/Projects/playground/c_playground

# Include any dependencies generated for this target.
include CMakeFiles/RedBlueChannelSwap.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/RedBlueChannelSwap.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/RedBlueChannelSwap.dir/flags.make

CMakeFiles/RedBlueChannelSwap.dir/channel_swap.c.o: CMakeFiles/RedBlueChannelSwap.dir/flags.make
CMakeFiles/RedBlueChannelSwap.dir/channel_swap.c.o: channel_swap.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/abhilash/Projects/playground/c_playground/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/RedBlueChannelSwap.dir/channel_swap.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/RedBlueChannelSwap.dir/channel_swap.c.o   -c /home/abhilash/Projects/playground/c_playground/channel_swap.c

CMakeFiles/RedBlueChannelSwap.dir/channel_swap.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/RedBlueChannelSwap.dir/channel_swap.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/abhilash/Projects/playground/c_playground/channel_swap.c > CMakeFiles/RedBlueChannelSwap.dir/channel_swap.c.i

CMakeFiles/RedBlueChannelSwap.dir/channel_swap.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/RedBlueChannelSwap.dir/channel_swap.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/abhilash/Projects/playground/c_playground/channel_swap.c -o CMakeFiles/RedBlueChannelSwap.dir/channel_swap.c.s

CMakeFiles/RedBlueChannelSwap.dir/channel_swap.c.o.requires:

.PHONY : CMakeFiles/RedBlueChannelSwap.dir/channel_swap.c.o.requires

CMakeFiles/RedBlueChannelSwap.dir/channel_swap.c.o.provides: CMakeFiles/RedBlueChannelSwap.dir/channel_swap.c.o.requires
	$(MAKE) -f CMakeFiles/RedBlueChannelSwap.dir/build.make CMakeFiles/RedBlueChannelSwap.dir/channel_swap.c.o.provides.build
.PHONY : CMakeFiles/RedBlueChannelSwap.dir/channel_swap.c.o.provides

CMakeFiles/RedBlueChannelSwap.dir/channel_swap.c.o.provides.build: CMakeFiles/RedBlueChannelSwap.dir/channel_swap.c.o


# Object files for target RedBlueChannelSwap
RedBlueChannelSwap_OBJECTS = \
"CMakeFiles/RedBlueChannelSwap.dir/channel_swap.c.o"

# External object files for target RedBlueChannelSwap
RedBlueChannelSwap_EXTERNAL_OBJECTS =

RedBlueChannelSwap: CMakeFiles/RedBlueChannelSwap.dir/channel_swap.c.o
RedBlueChannelSwap: CMakeFiles/RedBlueChannelSwap.dir/build.make
RedBlueChannelSwap: CMakeFiles/RedBlueChannelSwap.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/abhilash/Projects/playground/c_playground/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable RedBlueChannelSwap"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/RedBlueChannelSwap.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/RedBlueChannelSwap.dir/build: RedBlueChannelSwap

.PHONY : CMakeFiles/RedBlueChannelSwap.dir/build

CMakeFiles/RedBlueChannelSwap.dir/requires: CMakeFiles/RedBlueChannelSwap.dir/channel_swap.c.o.requires

.PHONY : CMakeFiles/RedBlueChannelSwap.dir/requires

CMakeFiles/RedBlueChannelSwap.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/RedBlueChannelSwap.dir/cmake_clean.cmake
.PHONY : CMakeFiles/RedBlueChannelSwap.dir/clean

CMakeFiles/RedBlueChannelSwap.dir/depend:
	cd /home/abhilash/Projects/playground/c_playground && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/abhilash/Projects/playground/c_playground /home/abhilash/Projects/playground/c_playground /home/abhilash/Projects/playground/c_playground /home/abhilash/Projects/playground/c_playground /home/abhilash/Projects/playground/c_playground/CMakeFiles/RedBlueChannelSwap.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/RedBlueChannelSwap.dir/depend

