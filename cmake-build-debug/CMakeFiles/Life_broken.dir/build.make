# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.6

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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/Kirill/ClionProjects/Life_broken

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/Kirill/ClionProjects/Life_broken/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/Life_broken.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Life_broken.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Life_broken.dir/flags.make

CMakeFiles/Life_broken.dir/Source_files/Life.cpp.o: CMakeFiles/Life_broken.dir/flags.make
CMakeFiles/Life_broken.dir/Source_files/Life.cpp.o: ../Source_files/Life.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Kirill/ClionProjects/Life_broken/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Life_broken.dir/Source_files/Life.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Life_broken.dir/Source_files/Life.cpp.o -c /Users/Kirill/ClionProjects/Life_broken/Source_files/Life.cpp

CMakeFiles/Life_broken.dir/Source_files/Life.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Life_broken.dir/Source_files/Life.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/Kirill/ClionProjects/Life_broken/Source_files/Life.cpp > CMakeFiles/Life_broken.dir/Source_files/Life.cpp.i

CMakeFiles/Life_broken.dir/Source_files/Life.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Life_broken.dir/Source_files/Life.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/Kirill/ClionProjects/Life_broken/Source_files/Life.cpp -o CMakeFiles/Life_broken.dir/Source_files/Life.cpp.s

CMakeFiles/Life_broken.dir/Source_files/Life.cpp.o.requires:

.PHONY : CMakeFiles/Life_broken.dir/Source_files/Life.cpp.o.requires

CMakeFiles/Life_broken.dir/Source_files/Life.cpp.o.provides: CMakeFiles/Life_broken.dir/Source_files/Life.cpp.o.requires
	$(MAKE) -f CMakeFiles/Life_broken.dir/build.make CMakeFiles/Life_broken.dir/Source_files/Life.cpp.o.provides.build
.PHONY : CMakeFiles/Life_broken.dir/Source_files/Life.cpp.o.provides

CMakeFiles/Life_broken.dir/Source_files/Life.cpp.o.provides.build: CMakeFiles/Life_broken.dir/Source_files/Life.cpp.o


CMakeFiles/Life_broken.dir/Source_files/unit/unit.cpp.o: CMakeFiles/Life_broken.dir/flags.make
CMakeFiles/Life_broken.dir/Source_files/unit/unit.cpp.o: ../Source_files/unit/unit.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Kirill/ClionProjects/Life_broken/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/Life_broken.dir/Source_files/unit/unit.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Life_broken.dir/Source_files/unit/unit.cpp.o -c /Users/Kirill/ClionProjects/Life_broken/Source_files/unit/unit.cpp

CMakeFiles/Life_broken.dir/Source_files/unit/unit.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Life_broken.dir/Source_files/unit/unit.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/Kirill/ClionProjects/Life_broken/Source_files/unit/unit.cpp > CMakeFiles/Life_broken.dir/Source_files/unit/unit.cpp.i

CMakeFiles/Life_broken.dir/Source_files/unit/unit.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Life_broken.dir/Source_files/unit/unit.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/Kirill/ClionProjects/Life_broken/Source_files/unit/unit.cpp -o CMakeFiles/Life_broken.dir/Source_files/unit/unit.cpp.s

CMakeFiles/Life_broken.dir/Source_files/unit/unit.cpp.o.requires:

.PHONY : CMakeFiles/Life_broken.dir/Source_files/unit/unit.cpp.o.requires

CMakeFiles/Life_broken.dir/Source_files/unit/unit.cpp.o.provides: CMakeFiles/Life_broken.dir/Source_files/unit/unit.cpp.o.requires
	$(MAKE) -f CMakeFiles/Life_broken.dir/build.make CMakeFiles/Life_broken.dir/Source_files/unit/unit.cpp.o.provides.build
.PHONY : CMakeFiles/Life_broken.dir/Source_files/unit/unit.cpp.o.provides

CMakeFiles/Life_broken.dir/Source_files/unit/unit.cpp.o.provides.build: CMakeFiles/Life_broken.dir/Source_files/unit/unit.cpp.o


CMakeFiles/Life_broken.dir/Source_files/unit/unit_params.cpp.o: CMakeFiles/Life_broken.dir/flags.make
CMakeFiles/Life_broken.dir/Source_files/unit/unit_params.cpp.o: ../Source_files/unit/unit_params.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Kirill/ClionProjects/Life_broken/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/Life_broken.dir/Source_files/unit/unit_params.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Life_broken.dir/Source_files/unit/unit_params.cpp.o -c /Users/Kirill/ClionProjects/Life_broken/Source_files/unit/unit_params.cpp

CMakeFiles/Life_broken.dir/Source_files/unit/unit_params.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Life_broken.dir/Source_files/unit/unit_params.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/Kirill/ClionProjects/Life_broken/Source_files/unit/unit_params.cpp > CMakeFiles/Life_broken.dir/Source_files/unit/unit_params.cpp.i

CMakeFiles/Life_broken.dir/Source_files/unit/unit_params.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Life_broken.dir/Source_files/unit/unit_params.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/Kirill/ClionProjects/Life_broken/Source_files/unit/unit_params.cpp -o CMakeFiles/Life_broken.dir/Source_files/unit/unit_params.cpp.s

CMakeFiles/Life_broken.dir/Source_files/unit/unit_params.cpp.o.requires:

.PHONY : CMakeFiles/Life_broken.dir/Source_files/unit/unit_params.cpp.o.requires

CMakeFiles/Life_broken.dir/Source_files/unit/unit_params.cpp.o.provides: CMakeFiles/Life_broken.dir/Source_files/unit/unit_params.cpp.o.requires
	$(MAKE) -f CMakeFiles/Life_broken.dir/build.make CMakeFiles/Life_broken.dir/Source_files/unit/unit_params.cpp.o.provides.build
.PHONY : CMakeFiles/Life_broken.dir/Source_files/unit/unit_params.cpp.o.provides

CMakeFiles/Life_broken.dir/Source_files/unit/unit_params.cpp.o.provides.build: CMakeFiles/Life_broken.dir/Source_files/unit/unit_params.cpp.o


CMakeFiles/Life_broken.dir/Source_files/field/field.cpp.o: CMakeFiles/Life_broken.dir/flags.make
CMakeFiles/Life_broken.dir/Source_files/field/field.cpp.o: ../Source_files/field/field.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Kirill/ClionProjects/Life_broken/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/Life_broken.dir/Source_files/field/field.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Life_broken.dir/Source_files/field/field.cpp.o -c /Users/Kirill/ClionProjects/Life_broken/Source_files/field/field.cpp

CMakeFiles/Life_broken.dir/Source_files/field/field.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Life_broken.dir/Source_files/field/field.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/Kirill/ClionProjects/Life_broken/Source_files/field/field.cpp > CMakeFiles/Life_broken.dir/Source_files/field/field.cpp.i

CMakeFiles/Life_broken.dir/Source_files/field/field.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Life_broken.dir/Source_files/field/field.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/Kirill/ClionProjects/Life_broken/Source_files/field/field.cpp -o CMakeFiles/Life_broken.dir/Source_files/field/field.cpp.s

CMakeFiles/Life_broken.dir/Source_files/field/field.cpp.o.requires:

.PHONY : CMakeFiles/Life_broken.dir/Source_files/field/field.cpp.o.requires

CMakeFiles/Life_broken.dir/Source_files/field/field.cpp.o.provides: CMakeFiles/Life_broken.dir/Source_files/field/field.cpp.o.requires
	$(MAKE) -f CMakeFiles/Life_broken.dir/build.make CMakeFiles/Life_broken.dir/Source_files/field/field.cpp.o.provides.build
.PHONY : CMakeFiles/Life_broken.dir/Source_files/field/field.cpp.o.provides

CMakeFiles/Life_broken.dir/Source_files/field/field.cpp.o.provides.build: CMakeFiles/Life_broken.dir/Source_files/field/field.cpp.o


CMakeFiles/Life_broken.dir/Source_files/place/place.cpp.o: CMakeFiles/Life_broken.dir/flags.make
CMakeFiles/Life_broken.dir/Source_files/place/place.cpp.o: ../Source_files/place/place.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Kirill/ClionProjects/Life_broken/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/Life_broken.dir/Source_files/place/place.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Life_broken.dir/Source_files/place/place.cpp.o -c /Users/Kirill/ClionProjects/Life_broken/Source_files/place/place.cpp

CMakeFiles/Life_broken.dir/Source_files/place/place.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Life_broken.dir/Source_files/place/place.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/Kirill/ClionProjects/Life_broken/Source_files/place/place.cpp > CMakeFiles/Life_broken.dir/Source_files/place/place.cpp.i

CMakeFiles/Life_broken.dir/Source_files/place/place.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Life_broken.dir/Source_files/place/place.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/Kirill/ClionProjects/Life_broken/Source_files/place/place.cpp -o CMakeFiles/Life_broken.dir/Source_files/place/place.cpp.s

CMakeFiles/Life_broken.dir/Source_files/place/place.cpp.o.requires:

.PHONY : CMakeFiles/Life_broken.dir/Source_files/place/place.cpp.o.requires

CMakeFiles/Life_broken.dir/Source_files/place/place.cpp.o.provides: CMakeFiles/Life_broken.dir/Source_files/place/place.cpp.o.requires
	$(MAKE) -f CMakeFiles/Life_broken.dir/build.make CMakeFiles/Life_broken.dir/Source_files/place/place.cpp.o.provides.build
.PHONY : CMakeFiles/Life_broken.dir/Source_files/place/place.cpp.o.provides

CMakeFiles/Life_broken.dir/Source_files/place/place.cpp.o.provides.build: CMakeFiles/Life_broken.dir/Source_files/place/place.cpp.o


CMakeFiles/Life_broken.dir/Source_files/brain/brain.cpp.o: CMakeFiles/Life_broken.dir/flags.make
CMakeFiles/Life_broken.dir/Source_files/brain/brain.cpp.o: ../Source_files/brain/brain.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Kirill/ClionProjects/Life_broken/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/Life_broken.dir/Source_files/brain/brain.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Life_broken.dir/Source_files/brain/brain.cpp.o -c /Users/Kirill/ClionProjects/Life_broken/Source_files/brain/brain.cpp

CMakeFiles/Life_broken.dir/Source_files/brain/brain.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Life_broken.dir/Source_files/brain/brain.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/Kirill/ClionProjects/Life_broken/Source_files/brain/brain.cpp > CMakeFiles/Life_broken.dir/Source_files/brain/brain.cpp.i

CMakeFiles/Life_broken.dir/Source_files/brain/brain.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Life_broken.dir/Source_files/brain/brain.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/Kirill/ClionProjects/Life_broken/Source_files/brain/brain.cpp -o CMakeFiles/Life_broken.dir/Source_files/brain/brain.cpp.s

CMakeFiles/Life_broken.dir/Source_files/brain/brain.cpp.o.requires:

.PHONY : CMakeFiles/Life_broken.dir/Source_files/brain/brain.cpp.o.requires

CMakeFiles/Life_broken.dir/Source_files/brain/brain.cpp.o.provides: CMakeFiles/Life_broken.dir/Source_files/brain/brain.cpp.o.requires
	$(MAKE) -f CMakeFiles/Life_broken.dir/build.make CMakeFiles/Life_broken.dir/Source_files/brain/brain.cpp.o.provides.build
.PHONY : CMakeFiles/Life_broken.dir/Source_files/brain/brain.cpp.o.provides

CMakeFiles/Life_broken.dir/Source_files/brain/brain.cpp.o.provides.build: CMakeFiles/Life_broken.dir/Source_files/brain/brain.cpp.o


CMakeFiles/Life_broken.dir/Source_files/sell/sell.cpp.o: CMakeFiles/Life_broken.dir/flags.make
CMakeFiles/Life_broken.dir/Source_files/sell/sell.cpp.o: ../Source_files/sell/sell.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Kirill/ClionProjects/Life_broken/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/Life_broken.dir/Source_files/sell/sell.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Life_broken.dir/Source_files/sell/sell.cpp.o -c /Users/Kirill/ClionProjects/Life_broken/Source_files/sell/sell.cpp

CMakeFiles/Life_broken.dir/Source_files/sell/sell.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Life_broken.dir/Source_files/sell/sell.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/Kirill/ClionProjects/Life_broken/Source_files/sell/sell.cpp > CMakeFiles/Life_broken.dir/Source_files/sell/sell.cpp.i

CMakeFiles/Life_broken.dir/Source_files/sell/sell.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Life_broken.dir/Source_files/sell/sell.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/Kirill/ClionProjects/Life_broken/Source_files/sell/sell.cpp -o CMakeFiles/Life_broken.dir/Source_files/sell/sell.cpp.s

CMakeFiles/Life_broken.dir/Source_files/sell/sell.cpp.o.requires:

.PHONY : CMakeFiles/Life_broken.dir/Source_files/sell/sell.cpp.o.requires

CMakeFiles/Life_broken.dir/Source_files/sell/sell.cpp.o.provides: CMakeFiles/Life_broken.dir/Source_files/sell/sell.cpp.o.requires
	$(MAKE) -f CMakeFiles/Life_broken.dir/build.make CMakeFiles/Life_broken.dir/Source_files/sell/sell.cpp.o.provides.build
.PHONY : CMakeFiles/Life_broken.dir/Source_files/sell/sell.cpp.o.provides

CMakeFiles/Life_broken.dir/Source_files/sell/sell.cpp.o.provides.build: CMakeFiles/Life_broken.dir/Source_files/sell/sell.cpp.o


CMakeFiles/Life_broken.dir/Source_files/sell/sell_params.cpp.o: CMakeFiles/Life_broken.dir/flags.make
CMakeFiles/Life_broken.dir/Source_files/sell/sell_params.cpp.o: ../Source_files/sell/sell_params.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Kirill/ClionProjects/Life_broken/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/Life_broken.dir/Source_files/sell/sell_params.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Life_broken.dir/Source_files/sell/sell_params.cpp.o -c /Users/Kirill/ClionProjects/Life_broken/Source_files/sell/sell_params.cpp

CMakeFiles/Life_broken.dir/Source_files/sell/sell_params.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Life_broken.dir/Source_files/sell/sell_params.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/Kirill/ClionProjects/Life_broken/Source_files/sell/sell_params.cpp > CMakeFiles/Life_broken.dir/Source_files/sell/sell_params.cpp.i

CMakeFiles/Life_broken.dir/Source_files/sell/sell_params.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Life_broken.dir/Source_files/sell/sell_params.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/Kirill/ClionProjects/Life_broken/Source_files/sell/sell_params.cpp -o CMakeFiles/Life_broken.dir/Source_files/sell/sell_params.cpp.s

CMakeFiles/Life_broken.dir/Source_files/sell/sell_params.cpp.o.requires:

.PHONY : CMakeFiles/Life_broken.dir/Source_files/sell/sell_params.cpp.o.requires

CMakeFiles/Life_broken.dir/Source_files/sell/sell_params.cpp.o.provides: CMakeFiles/Life_broken.dir/Source_files/sell/sell_params.cpp.o.requires
	$(MAKE) -f CMakeFiles/Life_broken.dir/build.make CMakeFiles/Life_broken.dir/Source_files/sell/sell_params.cpp.o.provides.build
.PHONY : CMakeFiles/Life_broken.dir/Source_files/sell/sell_params.cpp.o.provides

CMakeFiles/Life_broken.dir/Source_files/sell/sell_params.cpp.o.provides.build: CMakeFiles/Life_broken.dir/Source_files/sell/sell_params.cpp.o


CMakeFiles/Life_broken.dir/Source_files/sell/sell_brain.cpp.o: CMakeFiles/Life_broken.dir/flags.make
CMakeFiles/Life_broken.dir/Source_files/sell/sell_brain.cpp.o: ../Source_files/sell/sell_brain.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Kirill/ClionProjects/Life_broken/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/Life_broken.dir/Source_files/sell/sell_brain.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Life_broken.dir/Source_files/sell/sell_brain.cpp.o -c /Users/Kirill/ClionProjects/Life_broken/Source_files/sell/sell_brain.cpp

CMakeFiles/Life_broken.dir/Source_files/sell/sell_brain.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Life_broken.dir/Source_files/sell/sell_brain.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/Kirill/ClionProjects/Life_broken/Source_files/sell/sell_brain.cpp > CMakeFiles/Life_broken.dir/Source_files/sell/sell_brain.cpp.i

CMakeFiles/Life_broken.dir/Source_files/sell/sell_brain.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Life_broken.dir/Source_files/sell/sell_brain.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/Kirill/ClionProjects/Life_broken/Source_files/sell/sell_brain.cpp -o CMakeFiles/Life_broken.dir/Source_files/sell/sell_brain.cpp.s

CMakeFiles/Life_broken.dir/Source_files/sell/sell_brain.cpp.o.requires:

.PHONY : CMakeFiles/Life_broken.dir/Source_files/sell/sell_brain.cpp.o.requires

CMakeFiles/Life_broken.dir/Source_files/sell/sell_brain.cpp.o.provides: CMakeFiles/Life_broken.dir/Source_files/sell/sell_brain.cpp.o.requires
	$(MAKE) -f CMakeFiles/Life_broken.dir/build.make CMakeFiles/Life_broken.dir/Source_files/sell/sell_brain.cpp.o.provides.build
.PHONY : CMakeFiles/Life_broken.dir/Source_files/sell/sell_brain.cpp.o.provides

CMakeFiles/Life_broken.dir/Source_files/sell/sell_brain.cpp.o.provides.build: CMakeFiles/Life_broken.dir/Source_files/sell/sell_brain.cpp.o


CMakeFiles/Life_broken.dir/Source_files/body_parts/body_parts.cpp.o: CMakeFiles/Life_broken.dir/flags.make
CMakeFiles/Life_broken.dir/Source_files/body_parts/body_parts.cpp.o: ../Source_files/body_parts/body_parts.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Kirill/ClionProjects/Life_broken/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/Life_broken.dir/Source_files/body_parts/body_parts.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Life_broken.dir/Source_files/body_parts/body_parts.cpp.o -c /Users/Kirill/ClionProjects/Life_broken/Source_files/body_parts/body_parts.cpp

CMakeFiles/Life_broken.dir/Source_files/body_parts/body_parts.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Life_broken.dir/Source_files/body_parts/body_parts.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/Kirill/ClionProjects/Life_broken/Source_files/body_parts/body_parts.cpp > CMakeFiles/Life_broken.dir/Source_files/body_parts/body_parts.cpp.i

CMakeFiles/Life_broken.dir/Source_files/body_parts/body_parts.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Life_broken.dir/Source_files/body_parts/body_parts.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/Kirill/ClionProjects/Life_broken/Source_files/body_parts/body_parts.cpp -o CMakeFiles/Life_broken.dir/Source_files/body_parts/body_parts.cpp.s

CMakeFiles/Life_broken.dir/Source_files/body_parts/body_parts.cpp.o.requires:

.PHONY : CMakeFiles/Life_broken.dir/Source_files/body_parts/body_parts.cpp.o.requires

CMakeFiles/Life_broken.dir/Source_files/body_parts/body_parts.cpp.o.provides: CMakeFiles/Life_broken.dir/Source_files/body_parts/body_parts.cpp.o.requires
	$(MAKE) -f CMakeFiles/Life_broken.dir/build.make CMakeFiles/Life_broken.dir/Source_files/body_parts/body_parts.cpp.o.provides.build
.PHONY : CMakeFiles/Life_broken.dir/Source_files/body_parts/body_parts.cpp.o.provides

CMakeFiles/Life_broken.dir/Source_files/body_parts/body_parts.cpp.o.provides.build: CMakeFiles/Life_broken.dir/Source_files/body_parts/body_parts.cpp.o


CMakeFiles/Life_broken.dir/Source_files/predator/pred.cpp.o: CMakeFiles/Life_broken.dir/flags.make
CMakeFiles/Life_broken.dir/Source_files/predator/pred.cpp.o: ../Source_files/predator/pred.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Kirill/ClionProjects/Life_broken/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object CMakeFiles/Life_broken.dir/Source_files/predator/pred.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Life_broken.dir/Source_files/predator/pred.cpp.o -c /Users/Kirill/ClionProjects/Life_broken/Source_files/predator/pred.cpp

CMakeFiles/Life_broken.dir/Source_files/predator/pred.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Life_broken.dir/Source_files/predator/pred.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/Kirill/ClionProjects/Life_broken/Source_files/predator/pred.cpp > CMakeFiles/Life_broken.dir/Source_files/predator/pred.cpp.i

CMakeFiles/Life_broken.dir/Source_files/predator/pred.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Life_broken.dir/Source_files/predator/pred.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/Kirill/ClionProjects/Life_broken/Source_files/predator/pred.cpp -o CMakeFiles/Life_broken.dir/Source_files/predator/pred.cpp.s

CMakeFiles/Life_broken.dir/Source_files/predator/pred.cpp.o.requires:

.PHONY : CMakeFiles/Life_broken.dir/Source_files/predator/pred.cpp.o.requires

CMakeFiles/Life_broken.dir/Source_files/predator/pred.cpp.o.provides: CMakeFiles/Life_broken.dir/Source_files/predator/pred.cpp.o.requires
	$(MAKE) -f CMakeFiles/Life_broken.dir/build.make CMakeFiles/Life_broken.dir/Source_files/predator/pred.cpp.o.provides.build
.PHONY : CMakeFiles/Life_broken.dir/Source_files/predator/pred.cpp.o.provides

CMakeFiles/Life_broken.dir/Source_files/predator/pred.cpp.o.provides.build: CMakeFiles/Life_broken.dir/Source_files/predator/pred.cpp.o


CMakeFiles/Life_broken.dir/Source_files/predator/pred_brain.cpp.o: CMakeFiles/Life_broken.dir/flags.make
CMakeFiles/Life_broken.dir/Source_files/predator/pred_brain.cpp.o: ../Source_files/predator/pred_brain.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Kirill/ClionProjects/Life_broken/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object CMakeFiles/Life_broken.dir/Source_files/predator/pred_brain.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Life_broken.dir/Source_files/predator/pred_brain.cpp.o -c /Users/Kirill/ClionProjects/Life_broken/Source_files/predator/pred_brain.cpp

CMakeFiles/Life_broken.dir/Source_files/predator/pred_brain.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Life_broken.dir/Source_files/predator/pred_brain.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/Kirill/ClionProjects/Life_broken/Source_files/predator/pred_brain.cpp > CMakeFiles/Life_broken.dir/Source_files/predator/pred_brain.cpp.i

CMakeFiles/Life_broken.dir/Source_files/predator/pred_brain.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Life_broken.dir/Source_files/predator/pred_brain.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/Kirill/ClionProjects/Life_broken/Source_files/predator/pred_brain.cpp -o CMakeFiles/Life_broken.dir/Source_files/predator/pred_brain.cpp.s

CMakeFiles/Life_broken.dir/Source_files/predator/pred_brain.cpp.o.requires:

.PHONY : CMakeFiles/Life_broken.dir/Source_files/predator/pred_brain.cpp.o.requires

CMakeFiles/Life_broken.dir/Source_files/predator/pred_brain.cpp.o.provides: CMakeFiles/Life_broken.dir/Source_files/predator/pred_brain.cpp.o.requires
	$(MAKE) -f CMakeFiles/Life_broken.dir/build.make CMakeFiles/Life_broken.dir/Source_files/predator/pred_brain.cpp.o.provides.build
.PHONY : CMakeFiles/Life_broken.dir/Source_files/predator/pred_brain.cpp.o.provides

CMakeFiles/Life_broken.dir/Source_files/predator/pred_brain.cpp.o.provides.build: CMakeFiles/Life_broken.dir/Source_files/predator/pred_brain.cpp.o


CMakeFiles/Life_broken.dir/Source_files/predator/pred_params.cpp.o: CMakeFiles/Life_broken.dir/flags.make
CMakeFiles/Life_broken.dir/Source_files/predator/pred_params.cpp.o: ../Source_files/predator/pred_params.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Kirill/ClionProjects/Life_broken/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building CXX object CMakeFiles/Life_broken.dir/Source_files/predator/pred_params.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Life_broken.dir/Source_files/predator/pred_params.cpp.o -c /Users/Kirill/ClionProjects/Life_broken/Source_files/predator/pred_params.cpp

CMakeFiles/Life_broken.dir/Source_files/predator/pred_params.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Life_broken.dir/Source_files/predator/pred_params.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/Kirill/ClionProjects/Life_broken/Source_files/predator/pred_params.cpp > CMakeFiles/Life_broken.dir/Source_files/predator/pred_params.cpp.i

CMakeFiles/Life_broken.dir/Source_files/predator/pred_params.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Life_broken.dir/Source_files/predator/pred_params.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/Kirill/ClionProjects/Life_broken/Source_files/predator/pred_params.cpp -o CMakeFiles/Life_broken.dir/Source_files/predator/pred_params.cpp.s

CMakeFiles/Life_broken.dir/Source_files/predator/pred_params.cpp.o.requires:

.PHONY : CMakeFiles/Life_broken.dir/Source_files/predator/pred_params.cpp.o.requires

CMakeFiles/Life_broken.dir/Source_files/predator/pred_params.cpp.o.provides: CMakeFiles/Life_broken.dir/Source_files/predator/pred_params.cpp.o.requires
	$(MAKE) -f CMakeFiles/Life_broken.dir/build.make CMakeFiles/Life_broken.dir/Source_files/predator/pred_params.cpp.o.provides.build
.PHONY : CMakeFiles/Life_broken.dir/Source_files/predator/pred_params.cpp.o.provides

CMakeFiles/Life_broken.dir/Source_files/predator/pred_params.cpp.o.provides.build: CMakeFiles/Life_broken.dir/Source_files/predator/pred_params.cpp.o


# Object files for target Life_broken
Life_broken_OBJECTS = \
"CMakeFiles/Life_broken.dir/Source_files/Life.cpp.o" \
"CMakeFiles/Life_broken.dir/Source_files/unit/unit.cpp.o" \
"CMakeFiles/Life_broken.dir/Source_files/unit/unit_params.cpp.o" \
"CMakeFiles/Life_broken.dir/Source_files/field/field.cpp.o" \
"CMakeFiles/Life_broken.dir/Source_files/place/place.cpp.o" \
"CMakeFiles/Life_broken.dir/Source_files/brain/brain.cpp.o" \
"CMakeFiles/Life_broken.dir/Source_files/sell/sell.cpp.o" \
"CMakeFiles/Life_broken.dir/Source_files/sell/sell_params.cpp.o" \
"CMakeFiles/Life_broken.dir/Source_files/sell/sell_brain.cpp.o" \
"CMakeFiles/Life_broken.dir/Source_files/body_parts/body_parts.cpp.o" \
"CMakeFiles/Life_broken.dir/Source_files/predator/pred.cpp.o" \
"CMakeFiles/Life_broken.dir/Source_files/predator/pred_brain.cpp.o" \
"CMakeFiles/Life_broken.dir/Source_files/predator/pred_params.cpp.o"

# External object files for target Life_broken
Life_broken_EXTERNAL_OBJECTS =

Life_broken: CMakeFiles/Life_broken.dir/Source_files/Life.cpp.o
Life_broken: CMakeFiles/Life_broken.dir/Source_files/unit/unit.cpp.o
Life_broken: CMakeFiles/Life_broken.dir/Source_files/unit/unit_params.cpp.o
Life_broken: CMakeFiles/Life_broken.dir/Source_files/field/field.cpp.o
Life_broken: CMakeFiles/Life_broken.dir/Source_files/place/place.cpp.o
Life_broken: CMakeFiles/Life_broken.dir/Source_files/brain/brain.cpp.o
Life_broken: CMakeFiles/Life_broken.dir/Source_files/sell/sell.cpp.o
Life_broken: CMakeFiles/Life_broken.dir/Source_files/sell/sell_params.cpp.o
Life_broken: CMakeFiles/Life_broken.dir/Source_files/sell/sell_brain.cpp.o
Life_broken: CMakeFiles/Life_broken.dir/Source_files/body_parts/body_parts.cpp.o
Life_broken: CMakeFiles/Life_broken.dir/Source_files/predator/pred.cpp.o
Life_broken: CMakeFiles/Life_broken.dir/Source_files/predator/pred_brain.cpp.o
Life_broken: CMakeFiles/Life_broken.dir/Source_files/predator/pred_params.cpp.o
Life_broken: CMakeFiles/Life_broken.dir/build.make
Life_broken: /usr/local/lib/libsfml-system.dylib
Life_broken: /usr/local/lib/libsfml-window.dylib
Life_broken: /usr/local/lib/libsfml-graphics.dylib
Life_broken: /usr/local/lib/libsfml-network.dylib
Life_broken: /usr/local/lib/libsfml-audio.dylib
Life_broken: Neural_net_attempt_two/libNeural_net_attempt_two_.a
Life_broken: CMakeFiles/Life_broken.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/Kirill/ClionProjects/Life_broken/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Linking CXX executable Life_broken"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Life_broken.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Life_broken.dir/build: Life_broken

.PHONY : CMakeFiles/Life_broken.dir/build

CMakeFiles/Life_broken.dir/requires: CMakeFiles/Life_broken.dir/Source_files/Life.cpp.o.requires
CMakeFiles/Life_broken.dir/requires: CMakeFiles/Life_broken.dir/Source_files/unit/unit.cpp.o.requires
CMakeFiles/Life_broken.dir/requires: CMakeFiles/Life_broken.dir/Source_files/unit/unit_params.cpp.o.requires
CMakeFiles/Life_broken.dir/requires: CMakeFiles/Life_broken.dir/Source_files/field/field.cpp.o.requires
CMakeFiles/Life_broken.dir/requires: CMakeFiles/Life_broken.dir/Source_files/place/place.cpp.o.requires
CMakeFiles/Life_broken.dir/requires: CMakeFiles/Life_broken.dir/Source_files/brain/brain.cpp.o.requires
CMakeFiles/Life_broken.dir/requires: CMakeFiles/Life_broken.dir/Source_files/sell/sell.cpp.o.requires
CMakeFiles/Life_broken.dir/requires: CMakeFiles/Life_broken.dir/Source_files/sell/sell_params.cpp.o.requires
CMakeFiles/Life_broken.dir/requires: CMakeFiles/Life_broken.dir/Source_files/sell/sell_brain.cpp.o.requires
CMakeFiles/Life_broken.dir/requires: CMakeFiles/Life_broken.dir/Source_files/body_parts/body_parts.cpp.o.requires
CMakeFiles/Life_broken.dir/requires: CMakeFiles/Life_broken.dir/Source_files/predator/pred.cpp.o.requires
CMakeFiles/Life_broken.dir/requires: CMakeFiles/Life_broken.dir/Source_files/predator/pred_brain.cpp.o.requires
CMakeFiles/Life_broken.dir/requires: CMakeFiles/Life_broken.dir/Source_files/predator/pred_params.cpp.o.requires

.PHONY : CMakeFiles/Life_broken.dir/requires

CMakeFiles/Life_broken.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Life_broken.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Life_broken.dir/clean

CMakeFiles/Life_broken.dir/depend:
	cd /Users/Kirill/ClionProjects/Life_broken/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/Kirill/ClionProjects/Life_broken /Users/Kirill/ClionProjects/Life_broken /Users/Kirill/ClionProjects/Life_broken/cmake-build-debug /Users/Kirill/ClionProjects/Life_broken/cmake-build-debug /Users/Kirill/ClionProjects/Life_broken/cmake-build-debug/CMakeFiles/Life_broken.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Life_broken.dir/depend

