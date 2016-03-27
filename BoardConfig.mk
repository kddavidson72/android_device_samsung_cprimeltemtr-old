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

# Inherit from common version
-include device/samsung/msm8916-common/BoardConfigCommon.mk

# Assert
TARGET_OTA_ASSERT_DEVICE := cprimeltemtr,SM-G360T1

# Partitions
TARGET_RECOVERY_FSTAB := device/samsung/cprimeltemtr/fstab.msm8916

# Partition sizes
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 13631488
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 15728640
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1073741824
BOARD_USERDATAIMAGE_PARTITION_SIZE := 2147483648
BOARD_FLASH_BLOCK_SIZE := 131072 # (BOARD_KERNEL_PAGESIZE * 64)

# Kernel
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x80008000 --ramdisk_offset 0x82000000 --tags_offset 0x81e00000 --dt device/samsung/cprimeltemtr/dt.img
#TARGET_PREBUILT_KERNEL := device/samsung/cprimeltemtr
TARGET_KERNEL_CONFIG := msm8916_defconfig
TARGET_KERNEL_TIMA_CONFIG := tima8916_defconfig
TARGET_KERNEL_SELINUX_CONFIG := selinux_defconfig
TARGET_KERNEL_VARIANT_CONFIG := msm8916_sec_rossa_tmo_defconfig

# TWRP
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness

# Releasetools
TARGET_RELEASETOOLS_EXTENSIONS := device/samsung/cprimeltemtr

BOARD_SEPOLICY_DIRS += \
    device/samsung/msm8916-common/sepolicy

BOARD_SEPOLICY_UNION += \
    bluetooth_loader.te \
    file_contexts \
    mediaserver.te \
    property_contexts \
    system_app.te \
    time_daemon.te \
    vold.te \
    bluetooth.te \
    file.te \
    kernel.te \
    mm-qcamerad.te \
    property.te \
    rild.te \
    ueventd.te \
    wcnss_service.te
