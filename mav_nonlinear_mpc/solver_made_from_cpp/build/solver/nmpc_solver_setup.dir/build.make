# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_SOURCE_DIR = /home/charris/simulator_ws/src/rotors_simulator/rotors_mpc/mav_nonlinear_mpc/solver_made_from_cpp

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/charris/simulator_ws/src/rotors_simulator/rotors_mpc/mav_nonlinear_mpc/solver_made_from_cpp/build

# Include any dependencies generated for this target.
include CMakeFiles/../solver/nmpc_solver_setup.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/../solver/nmpc_solver_setup.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/../solver/nmpc_solver_setup.dir/flags.make

CMakeFiles/../solver/nmpc_solver_setup.dir/nmpc_solver_setup.cpp.o: CMakeFiles/../solver/nmpc_solver_setup.dir/flags.make
CMakeFiles/../solver/nmpc_solver_setup.dir/nmpc_solver_setup.cpp.o: ../nmpc_solver_setup.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/charris/simulator_ws/src/rotors_simulator/rotors_mpc/mav_nonlinear_mpc/solver_made_from_cpp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/../solver/nmpc_solver_setup.dir/nmpc_solver_setup.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/../solver/nmpc_solver_setup.dir/nmpc_solver_setup.cpp.o -c /home/charris/simulator_ws/src/rotors_simulator/rotors_mpc/mav_nonlinear_mpc/solver_made_from_cpp/nmpc_solver_setup.cpp

CMakeFiles/../solver/nmpc_solver_setup.dir/nmpc_solver_setup.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/../solver/nmpc_solver_setup.dir/nmpc_solver_setup.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/charris/simulator_ws/src/rotors_simulator/rotors_mpc/mav_nonlinear_mpc/solver_made_from_cpp/nmpc_solver_setup.cpp > CMakeFiles/../solver/nmpc_solver_setup.dir/nmpc_solver_setup.cpp.i

CMakeFiles/../solver/nmpc_solver_setup.dir/nmpc_solver_setup.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/../solver/nmpc_solver_setup.dir/nmpc_solver_setup.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/charris/simulator_ws/src/rotors_simulator/rotors_mpc/mav_nonlinear_mpc/solver_made_from_cpp/nmpc_solver_setup.cpp -o CMakeFiles/../solver/nmpc_solver_setup.dir/nmpc_solver_setup.cpp.s

CMakeFiles/../solver/nmpc_solver_setup.dir/nmpc_solver_setup.cpp.o.requires:

.PHONY : CMakeFiles/../solver/nmpc_solver_setup.dir/nmpc_solver_setup.cpp.o.requires

CMakeFiles/../solver/nmpc_solver_setup.dir/nmpc_solver_setup.cpp.o.provides: CMakeFiles/../solver/nmpc_solver_setup.dir/nmpc_solver_setup.cpp.o.requires
	$(MAKE) -f CMakeFiles/../solver/nmpc_solver_setup.dir/build.make CMakeFiles/../solver/nmpc_solver_setup.dir/nmpc_solver_setup.cpp.o.provides.build
.PHONY : CMakeFiles/../solver/nmpc_solver_setup.dir/nmpc_solver_setup.cpp.o.provides

CMakeFiles/../solver/nmpc_solver_setup.dir/nmpc_solver_setup.cpp.o.provides.build: CMakeFiles/../solver/nmpc_solver_setup.dir/nmpc_solver_setup.cpp.o


# Object files for target ../solver/nmpc_solver_setup
__/solver/nmpc_solver_setup_OBJECTS = \
"CMakeFiles/../solver/nmpc_solver_setup.dir/nmpc_solver_setup.cpp.o"

# External object files for target ../solver/nmpc_solver_setup
__/solver/nmpc_solver_setup_EXTERNAL_OBJECTS =

../../solver/nmpc_solver_setup: CMakeFiles/../solver/nmpc_solver_setup.dir/nmpc_solver_setup.cpp.o
../../solver/nmpc_solver_setup: CMakeFiles/../solver/nmpc_solver_setup.dir/build.make
../../solver/nmpc_solver_setup: /home/charris/dronex_ws/src/ACADOtoolkit/build/lib/libacado_toolkit_s.so
../../solver/nmpc_solver_setup: CMakeFiles/../solver/nmpc_solver_setup.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/charris/simulator_ws/src/rotors_simulator/rotors_mpc/mav_nonlinear_mpc/solver_made_from_cpp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../solver/nmpc_solver_setup"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/../solver/nmpc_solver_setup.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/../solver/nmpc_solver_setup.dir/build: ../../solver/nmpc_solver_setup

.PHONY : CMakeFiles/../solver/nmpc_solver_setup.dir/build

CMakeFiles/../solver/nmpc_solver_setup.dir/requires: CMakeFiles/../solver/nmpc_solver_setup.dir/nmpc_solver_setup.cpp.o.requires

.PHONY : CMakeFiles/../solver/nmpc_solver_setup.dir/requires

CMakeFiles/../solver/nmpc_solver_setup.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/../solver/nmpc_solver_setup.dir/cmake_clean.cmake
.PHONY : CMakeFiles/../solver/nmpc_solver_setup.dir/clean

CMakeFiles/../solver/nmpc_solver_setup.dir/depend:
	cd /home/charris/simulator_ws/src/rotors_simulator/rotors_mpc/mav_nonlinear_mpc/solver_made_from_cpp/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/charris/simulator_ws/src/rotors_simulator/rotors_mpc/mav_nonlinear_mpc/solver_made_from_cpp /home/charris/simulator_ws/src/rotors_simulator/rotors_mpc/mav_nonlinear_mpc/solver_made_from_cpp /home/charris/simulator_ws/src/rotors_simulator/rotors_mpc/mav_nonlinear_mpc/solver_made_from_cpp/build /home/charris/simulator_ws/src/rotors_simulator/rotors_mpc/mav_nonlinear_mpc/solver_made_from_cpp/build /home/charris/simulator_ws/src/rotors_simulator/rotors_mpc/mav_nonlinear_mpc/solver_made_from_cpp/build/solver/nmpc_solver_setup.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/../solver/nmpc_solver_setup.dir/depend

