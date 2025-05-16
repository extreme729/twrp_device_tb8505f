#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
# Copyright (C) 2025 Rissu Projects
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from TB8505F device
$(call inherit-product, device/lenovo/TB8505F/device.mk)

# Enable project quotas and casefolding for emulated storage without sdcardfs
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)

PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,device/lenovo/TB8505F/recovery/root,recovery/root)

PRODUCT_DEVICE := TB8505F
PRODUCT_NAME := twrp_TB8505F
PRODUCT_BRAND := Lenovo
PRODUCT_MODEL := Lenovo TB8505F
PRODUCT_MANUFACTURER := lenovo

PRODUCT_GMS_CLIENTID_BASE := android-lenovo

BUILD_FINGERPRINT := lenovo/TB8505Fxx/TB8505F:12/SP1A.210812.016/generic:user/release-keys
