# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.17

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

# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "D:\softwares\CLion 2020.3.2\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "D:\softwares\CLion 2020.3.2\bin\cmake\win\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = D:\code\C\Algorithm_exercise\leetcode_ex

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = D:\code\C\Algorithm_exercise\leetcode_ex\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/leetcode_ex.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/leetcode_ex.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/leetcode_ex.dir/flags.make

CMakeFiles/leetcode_ex.dir/main.c.obj: CMakeFiles/leetcode_ex.dir/flags.make
CMakeFiles/leetcode_ex.dir/main.c.obj: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\code\C\Algorithm_exercise\leetcode_ex\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/leetcode_ex.dir/main.c.obj"
	D:\softwares\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\leetcode_ex.dir\main.c.obj   -c D:\code\C\Algorithm_exercise\leetcode_ex\main.c

CMakeFiles/leetcode_ex.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/leetcode_ex.dir/main.c.i"
	D:\softwares\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E D:\code\C\Algorithm_exercise\leetcode_ex\main.c > CMakeFiles\leetcode_ex.dir\main.c.i

CMakeFiles/leetcode_ex.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/leetcode_ex.dir/main.c.s"
	D:\softwares\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S D:\code\C\Algorithm_exercise\leetcode_ex\main.c -o CMakeFiles\leetcode_ex.dir\main.c.s

# Object files for target leetcode_ex
leetcode_ex_OBJECTS = \
"CMakeFiles/leetcode_ex.dir/main.c.obj"

# External object files for target leetcode_ex
leetcode_ex_EXTERNAL_OBJECTS =

leetcode_ex.exe: CMakeFiles/leetcode_ex.dir/main.c.obj
leetcode_ex.exe: CMakeFiles/leetcode_ex.dir/build.make
leetcode_ex.exe: CMakeFiles/leetcode_ex.dir/linklibs.rsp
leetcode_ex.exe: CMakeFiles/leetcode_ex.dir/objects1.rsp
leetcode_ex.exe: CMakeFiles/leetcode_ex.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=D:\code\C\Algorithm_exercise\leetcode_ex\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable leetcode_ex.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\leetcode_ex.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/leetcode_ex.dir/build: leetcode_ex.exe

.PHONY : CMakeFiles/leetcode_ex.dir/build

CMakeFiles/leetcode_ex.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\leetcode_ex.dir\cmake_clean.cmake
.PHONY : CMakeFiles/leetcode_ex.dir/clean

CMakeFiles/leetcode_ex.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" D:\code\C\Algorithm_exercise\leetcode_ex D:\code\C\Algorithm_exercise\leetcode_ex D:\code\C\Algorithm_exercise\leetcode_ex\cmake-build-debug D:\code\C\Algorithm_exercise\leetcode_ex\cmake-build-debug D:\code\C\Algorithm_exercise\leetcode_ex\cmake-build-debug\CMakeFiles\leetcode_ex.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/leetcode_ex.dir/depend

