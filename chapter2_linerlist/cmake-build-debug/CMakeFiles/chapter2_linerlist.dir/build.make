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
CMAKE_SOURCE_DIR = D:\code\C\Algorithm_exercise\chapter2_linerlist

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = D:\code\C\Algorithm_exercise\chapter2_linerlist\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/chapter2_linerlist.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/chapter2_linerlist.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/chapter2_linerlist.dir/flags.make

CMakeFiles/chapter2_linerlist.dir/main.c.obj: CMakeFiles/chapter2_linerlist.dir/flags.make
CMakeFiles/chapter2_linerlist.dir/main.c.obj: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\code\C\Algorithm_exercise\chapter2_linerlist\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/chapter2_linerlist.dir/main.c.obj"
	D:\softwares\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\chapter2_linerlist.dir\main.c.obj   -c D:\code\C\Algorithm_exercise\chapter2_linerlist\main.c

CMakeFiles/chapter2_linerlist.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/chapter2_linerlist.dir/main.c.i"
	D:\softwares\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E D:\code\C\Algorithm_exercise\chapter2_linerlist\main.c > CMakeFiles\chapter2_linerlist.dir\main.c.i

CMakeFiles/chapter2_linerlist.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/chapter2_linerlist.dir/main.c.s"
	D:\softwares\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S D:\code\C\Algorithm_exercise\chapter2_linerlist\main.c -o CMakeFiles\chapter2_linerlist.dir\main.c.s

# Object files for target chapter2_linerlist
chapter2_linerlist_OBJECTS = \
"CMakeFiles/chapter2_linerlist.dir/main.c.obj"

# External object files for target chapter2_linerlist
chapter2_linerlist_EXTERNAL_OBJECTS =

chapter2_linerlist.exe: CMakeFiles/chapter2_linerlist.dir/main.c.obj
chapter2_linerlist.exe: CMakeFiles/chapter2_linerlist.dir/build.make
chapter2_linerlist.exe: CMakeFiles/chapter2_linerlist.dir/linklibs.rsp
chapter2_linerlist.exe: CMakeFiles/chapter2_linerlist.dir/objects1.rsp
chapter2_linerlist.exe: CMakeFiles/chapter2_linerlist.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=D:\code\C\Algorithm_exercise\chapter2_linerlist\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable chapter2_linerlist.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\chapter2_linerlist.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/chapter2_linerlist.dir/build: chapter2_linerlist.exe

.PHONY : CMakeFiles/chapter2_linerlist.dir/build

CMakeFiles/chapter2_linerlist.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\chapter2_linerlist.dir\cmake_clean.cmake
.PHONY : CMakeFiles/chapter2_linerlist.dir/clean

CMakeFiles/chapter2_linerlist.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" D:\code\C\Algorithm_exercise\chapter2_linerlist D:\code\C\Algorithm_exercise\chapter2_linerlist D:\code\C\Algorithm_exercise\chapter2_linerlist\cmake-build-debug D:\code\C\Algorithm_exercise\chapter2_linerlist\cmake-build-debug D:\code\C\Algorithm_exercise\chapter2_linerlist\cmake-build-debug\CMakeFiles\chapter2_linerlist.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/chapter2_linerlist.dir/depend

