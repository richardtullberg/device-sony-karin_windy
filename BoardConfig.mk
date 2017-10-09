# Copyright 2014 The Android Open Source Project
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

include device/sony/karin_windy/BoardConfigCommon.mk

TARGET_BOOTLOADER_BOARD_NAME := SGP712

WIFI_BUS := PCIE

BOARD_KERNEL_CMDLINE += androidboot.hardware=karin_windy

# Platform
PRODUCT_PLATFORM := kitakami

# Recovery config
BOARD_SONY_INIT_FLAGS += -DDEV_BLOCK_FOTA_NUM="32"
BOARD_SONY_INIT_FLAGS += -DDEV_BLOCK_FOTA_MAJOR="259"
BOARD_SONY_INIT_FLAGS += -DDEV_BLOCK_FOTA_MINOR="0"

# Partition information
BOARD_FLASH_BLOCK_SIZE := 131072 # (BOARD_KERNEL_PAGESIZE * 64)
BOARD_CACHEIMAGE_PARTITION_SIZE := 202211328
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 5257383936
# Reserve space for data encryption (23842959360-16384)
BOARD_USERDATAIMAGE_PARTITION_SIZE := 23842942976
