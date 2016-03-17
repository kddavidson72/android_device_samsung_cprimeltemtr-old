# Copyright (C) 2015 The CyanogenMod Project
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

#
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

COMMON_PATH := device/samsung/msm8916-common

LOCAL_PATH  := device/samsung/cprimeltemtr

# Inherit from common version
-include device/samsung/msm8916-common/BoardConfigCommon.mk

# Arch
TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_CPU_VARIANT := cortex-a53
TARGET_CPU_CORTEX_A53 := true

# Assert
TARGET_OTA_ASSERT_DEVICE := cprimeltemtr, SM-G360T1

# Make Boot Image
BOARD_CUSTOM_BOOTIMG_MK := device/samsung/cprimeltemtr/mkbootimg.mk

# Resolution
DEVICE_RESOLUTION := 480x800

# Kernel
TARGET_KERNEL_SOURCE        := kernel/samsung/msm8916
TARGET_KERNEL_CONFIG 				:= msm8916_sec_defconfig
TARGET_KERNEL_SELINUX_CONFIG 			:= selinux_defconfig
TARGET_KERNEL_VARIANT_CONFIG 			:= msm8916_sec_rossa_tmo_defconfig

# Enable HW based full disk encryption
TARGET_HW_DISK_ENCRYPTION := true

# TWRP
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness

# Storage
TARGET_RECOVERY_FSTAB := device/samsung/cprimeltemtr/fstab.msm8916
TW_NO_USB_STORAGE := false
TW_MTP_DEVICE := /dev/usb_mtp_gadget
RECOVERY_SDCARD_ON_DATA := true

# Misc.
BOARD_RECOVERY_SWIPE := true
TW_HAS_DOWNLOAD_MODE := true
TW_NO_REBOOT_BOOTLOADER := true
TARGET_RECOVERY_QCOM_RTC_FIX := true

# Releasetools
TARGET_RELEASETOOLS_EXTENSIONS := device/samsung/cprimeltemtr

# Inherit from vendor
-include vendor/samsung/cprimeltemtr/BoardConfigVendor.mk
