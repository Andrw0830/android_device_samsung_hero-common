# Copyright (C) 2017 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

ifneq ($(TARGET_AUDIOHAL_VARIANT),samsung)

LOCAL_PATH := $(call my-dir)

# Audio HAL
include $(CLEAR_VARS)

LOCAL_MODULE := audio.primary.$(TARGET_BOOTLOADER_BOARD_NAME)
LOCAL_MODULE_RELATIVE_PATH := hw
LOCAL_MODULE_TAGS := optional

LOCAL_SRC_FILES := audio_hw.c ril_interface.c

LOCAL_C_INCLUDES += \
	external/tinyalsa/include \
	$(call include-path-for, audio-effects) \
	$(call include-path-for, audio-utils) \
	$(call include-path-for, audio-route) \
	hardware/samsung/ril/libsecril-client \
        $(TARGET_OUT_INTERMEDIATES)/KERNEL_OBJ/usr/include \

LOCAL_ADDITIONAL_DEPENDENCIES += \
	$(TARGET_OUT_INTERMEDIATES)/KERNEL_OBJ/usr

LOCAL_SHARED_LIBRARIES := liblog libcutils libtinyalsa libaudioutils libdl \
	libaudioroute libsecril-client

include $(BUILD_SHARED_LIBRARY)

endif

