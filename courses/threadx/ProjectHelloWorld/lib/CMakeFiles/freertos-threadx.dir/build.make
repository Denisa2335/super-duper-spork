# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.27

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
CMAKE_SOURCE_DIR = /workspaces/azure-rtos-learn-samples/courses/threadx/ProjectHelloWorld

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /workspaces/azure-rtos-learn-samples/courses/threadx/ProjectHelloWorld

# Include any dependencies generated for this target.
include lib/CMakeFiles/freertos-threadx.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include lib/CMakeFiles/freertos-threadx.dir/compiler_depend.make

# Include the progress variables for this target.
include lib/CMakeFiles/freertos-threadx.dir/progress.make

# Include the compile flags for this target's objects.
include lib/CMakeFiles/freertos-threadx.dir/flags.make

lib/CMakeFiles/freertos-threadx.dir/utility/rtos_compatibility_layers/FreeRTOS/tx_freertos.c.o: lib/CMakeFiles/freertos-threadx.dir/flags.make
lib/CMakeFiles/freertos-threadx.dir/utility/rtos_compatibility_layers/FreeRTOS/tx_freertos.c.o: /workspaces/azure-rtos-learn-samples/libs/threadx/utility/rtos_compatibility_layers/FreeRTOS/tx_freertos.c
lib/CMakeFiles/freertos-threadx.dir/utility/rtos_compatibility_layers/FreeRTOS/tx_freertos.c.o: lib/CMakeFiles/freertos-threadx.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/workspaces/azure-rtos-learn-samples/courses/threadx/ProjectHelloWorld/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object lib/CMakeFiles/freertos-threadx.dir/utility/rtos_compatibility_layers/FreeRTOS/tx_freertos.c.o"
	cd /workspaces/azure-rtos-learn-samples/courses/threadx/ProjectHelloWorld/lib && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT lib/CMakeFiles/freertos-threadx.dir/utility/rtos_compatibility_layers/FreeRTOS/tx_freertos.c.o -MF CMakeFiles/freertos-threadx.dir/utility/rtos_compatibility_layers/FreeRTOS/tx_freertos.c.o.d -o CMakeFiles/freertos-threadx.dir/utility/rtos_compatibility_layers/FreeRTOS/tx_freertos.c.o -c /workspaces/azure-rtos-learn-samples/libs/threadx/utility/rtos_compatibility_layers/FreeRTOS/tx_freertos.c

lib/CMakeFiles/freertos-threadx.dir/utility/rtos_compatibility_layers/FreeRTOS/tx_freertos.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/freertos-threadx.dir/utility/rtos_compatibility_layers/FreeRTOS/tx_freertos.c.i"
	cd /workspaces/azure-rtos-learn-samples/courses/threadx/ProjectHelloWorld/lib && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /workspaces/azure-rtos-learn-samples/libs/threadx/utility/rtos_compatibility_layers/FreeRTOS/tx_freertos.c > CMakeFiles/freertos-threadx.dir/utility/rtos_compatibility_layers/FreeRTOS/tx_freertos.c.i

lib/CMakeFiles/freertos-threadx.dir/utility/rtos_compatibility_layers/FreeRTOS/tx_freertos.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/freertos-threadx.dir/utility/rtos_compatibility_layers/FreeRTOS/tx_freertos.c.s"
	cd /workspaces/azure-rtos-learn-samples/courses/threadx/ProjectHelloWorld/lib && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /workspaces/azure-rtos-learn-samples/libs/threadx/utility/rtos_compatibility_layers/FreeRTOS/tx_freertos.c -o CMakeFiles/freertos-threadx.dir/utility/rtos_compatibility_layers/FreeRTOS/tx_freertos.c.s

# Object files for target freertos-threadx
freertos__threadx_OBJECTS = \
"CMakeFiles/freertos-threadx.dir/utility/rtos_compatibility_layers/FreeRTOS/tx_freertos.c.o"

# External object files for target freertos-threadx
freertos__threadx_EXTERNAL_OBJECTS =

lib/libfreertos-threadx.a: lib/CMakeFiles/freertos-threadx.dir/utility/rtos_compatibility_layers/FreeRTOS/tx_freertos.c.o
lib/libfreertos-threadx.a: lib/CMakeFiles/freertos-threadx.dir/build.make
lib/libfreertos-threadx.a: lib/CMakeFiles/freertos-threadx.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/workspaces/azure-rtos-learn-samples/courses/threadx/ProjectHelloWorld/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C static library libfreertos-threadx.a"
	cd /workspaces/azure-rtos-learn-samples/courses/threadx/ProjectHelloWorld/lib && $(CMAKE_COMMAND) -P CMakeFiles/freertos-threadx.dir/cmake_clean_target.cmake
	cd /workspaces/azure-rtos-learn-samples/courses/threadx/ProjectHelloWorld/lib && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/freertos-threadx.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
lib/CMakeFiles/freertos-threadx.dir/build: lib/libfreertos-threadx.a
.PHONY : lib/CMakeFiles/freertos-threadx.dir/build

lib/CMakeFiles/freertos-threadx.dir/clean:
	cd /workspaces/azure-rtos-learn-samples/courses/threadx/ProjectHelloWorld/lib && $(CMAKE_COMMAND) -P CMakeFiles/freertos-threadx.dir/cmake_clean.cmake
.PHONY : lib/CMakeFiles/freertos-threadx.dir/clean

lib/CMakeFiles/freertos-threadx.dir/depend:
	cd /workspaces/azure-rtos-learn-samples/courses/threadx/ProjectHelloWorld && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /workspaces/azure-rtos-learn-samples/courses/threadx/ProjectHelloWorld /workspaces/azure-rtos-learn-samples/libs/threadx /workspaces/azure-rtos-learn-samples/courses/threadx/ProjectHelloWorld /workspaces/azure-rtos-learn-samples/courses/threadx/ProjectHelloWorld/lib /workspaces/azure-rtos-learn-samples/courses/threadx/ProjectHelloWorld/lib/CMakeFiles/freertos-threadx.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : lib/CMakeFiles/freertos-threadx.dir/depend

