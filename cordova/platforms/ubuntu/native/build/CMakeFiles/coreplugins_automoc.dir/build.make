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
CMAKE_SOURCE_DIR = /home/duke/src/uhura-dashboard/cordova/platforms/ubuntu/build

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/duke/src/uhura-dashboard/cordova/platforms/ubuntu/native/build

# Utility rule file for coreplugins_automoc.

# Include the progress variables for this target.
include CMakeFiles/coreplugins_automoc.dir/progress.make

CMakeFiles/coreplugins_automoc:
	$(CMAKE_COMMAND) -E cmake_progress_report /home/duke/src/uhura-dashboard/cordova/platforms/ubuntu/native/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Automoc for target coreplugins"
	/usr/bin/cmake -E cmake_automoc /home/duke/src/uhura-dashboard/cordova/platforms/ubuntu/native/build/CMakeFiles/coreplugins_automoc.dir/ Release

coreplugins_automoc: CMakeFiles/coreplugins_automoc
coreplugins_automoc: CMakeFiles/coreplugins_automoc.dir/build.make
.PHONY : coreplugins_automoc

# Rule to build all files generated by this target.
CMakeFiles/coreplugins_automoc.dir/build: coreplugins_automoc
.PHONY : CMakeFiles/coreplugins_automoc.dir/build

CMakeFiles/coreplugins_automoc.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/coreplugins_automoc.dir/cmake_clean.cmake
.PHONY : CMakeFiles/coreplugins_automoc.dir/clean

CMakeFiles/coreplugins_automoc.dir/depend:
	cd /home/duke/src/uhura-dashboard/cordova/platforms/ubuntu/native/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/duke/src/uhura-dashboard/cordova/platforms/ubuntu/build /home/duke/src/uhura-dashboard/cordova/platforms/ubuntu/build /home/duke/src/uhura-dashboard/cordova/platforms/ubuntu/native/build /home/duke/src/uhura-dashboard/cordova/platforms/ubuntu/native/build /home/duke/src/uhura-dashboard/cordova/platforms/ubuntu/native/build/CMakeFiles/coreplugins_automoc.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/coreplugins_automoc.dir/depend
