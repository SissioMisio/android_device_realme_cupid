#
# Copyright (C) 2021-2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from cupidr device
$(call inherit-product, device/realme/cupidr/device.mk)

# Inherit some common AlphaDroid stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_cupidr
PRODUCT_DEVICE := cupidr
PRODUCT_MANUFACTURER := realme
PRODUCT_BRAND := realme
PRODUCT_MODEL := RMX2202

PRODUCT_SYSTEM_NAME := RMX2202L1
PRODUCT_SYSTEM_DEVICE := RMX2202L1

PRODUCT_GMS_CLIENTID_BASE := android-oppo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="RMX2202-user 13 TP1A.220905.001 R.13639a6-a-2bdaa release-keys" \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME) \
    RISING_CHIPSET="Snapdragon888" \
    RISING_MAINTAINER="SissioMisio"

BUILD_FINGERPRINT := realme/RMX2202/RMX2202L1:13/TP1A.220905.001/R.13639a6-a-2bdaa:user/release-keys

# RisingOS flags
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_ENABLE_BLUR := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_HAS_UDFPS := true
TARGET_USE_GOOGLE_TELEPHONY := true
TARGET_PREBUILT_PIXEL_LAUNCHER := false

# GAPPS
WITH_GMS := true
TARGET_DEFAULT_PIXEL_LAUNCHER := false
