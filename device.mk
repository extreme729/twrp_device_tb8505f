#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
# Copyright (C) 2025 Rissu Projects
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := device/lenovo/TB8505F

# fastbootd
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.0-impl-mock \
    fastbootd

# Dynamic partition
PRODUCT_USE_DYNAMIC_PARTITIONS := true
