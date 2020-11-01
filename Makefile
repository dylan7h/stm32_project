ifeq ($(OS),Windows_NT)
SWITCH := $(shell chcp 65001)
endif

COMPILER_TYPE			:= ARM							# GNU | ARM
TOOLCHAIN_ROOT			:= "C:/Keil_v5/ARM/ARMCLANG"

TARGET					:= all
BUILD_TYPE				:= Debug						# Release | Debug | RelWithDebInfo
VERBOSE					:= ON
EXPORT_COMPILE_COMMANDS	:= ON

NATIVE					:= "Unix Makefiles"
BUILD_DIR				:= Build
ROOT_DIR				:= Project

all: build

config:
	cmake -B$(BUILD_DIR) -H$(ROOT_DIR) -G $(NATIVE) -DTOOLCHAIN_ROOT=$(TOOLCHAIN_ROOT) -DCMAKE_BUILD_TYPE=$(BUILD_TYPE) -DCMAKE_VERBOSE_MAKEFILE=$(VERBOSE) -DCMAKE_EXPORT_COMPILE_COMMANDS=$(EXPORT_COMPILE_COMMANDS) -DCOMPILER_TYPE=$(COMPILER_TYPE)

build: config
	cmake --build $(BUILD_DIR) --target $(TARGET)

clean:
	cmake --build $(BUILD_DIR) --target clean

remove:
	cmake -E remove_directory $(BUILD_DIR)
