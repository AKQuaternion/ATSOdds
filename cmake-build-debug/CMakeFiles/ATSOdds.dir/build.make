# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.15

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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/hartman/CLionProjects/ATSOdds

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/hartman/CLionProjects/ATSOdds/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/ATSOdds.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/ATSOdds.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ATSOdds.dir/flags.make

CMakeFiles/ATSOdds.dir/main.cpp.o: CMakeFiles/ATSOdds.dir/flags.make
CMakeFiles/ATSOdds.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/hartman/CLionProjects/ATSOdds/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/ATSOdds.dir/main.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ATSOdds.dir/main.cpp.o -c /Users/hartman/CLionProjects/ATSOdds/main.cpp

CMakeFiles/ATSOdds.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ATSOdds.dir/main.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/hartman/CLionProjects/ATSOdds/main.cpp > CMakeFiles/ATSOdds.dir/main.cpp.i

CMakeFiles/ATSOdds.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ATSOdds.dir/main.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/hartman/CLionProjects/ATSOdds/main.cpp -o CMakeFiles/ATSOdds.dir/main.cpp.s

# Object files for target ATSOdds
ATSOdds_OBJECTS = \
"CMakeFiles/ATSOdds.dir/main.cpp.o"

# External object files for target ATSOdds
ATSOdds_EXTERNAL_OBJECTS =

ATSOdds: CMakeFiles/ATSOdds.dir/main.cpp.o
ATSOdds: CMakeFiles/ATSOdds.dir/build.make
ATSOdds: CMakeFiles/ATSOdds.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/hartman/CLionProjects/ATSOdds/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ATSOdds"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ATSOdds.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ATSOdds.dir/build: ATSOdds

.PHONY : CMakeFiles/ATSOdds.dir/build

CMakeFiles/ATSOdds.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ATSOdds.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ATSOdds.dir/clean

CMakeFiles/ATSOdds.dir/depend:
	cd /Users/hartman/CLionProjects/ATSOdds/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/hartman/CLionProjects/ATSOdds /Users/hartman/CLionProjects/ATSOdds /Users/hartman/CLionProjects/ATSOdds/cmake-build-debug /Users/hartman/CLionProjects/ATSOdds/cmake-build-debug /Users/hartman/CLionProjects/ATSOdds/cmake-build-debug/CMakeFiles/ATSOdds.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ATSOdds.dir/depend

