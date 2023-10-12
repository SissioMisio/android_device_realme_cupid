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

# Inherit some common Octavi stuff.
$(call inherit-product, vendor/superior/config/common.mk)

PRODUCT_NAME := superior_cupidr
PRODUCT_DEVICE := cupidr
PRODUCT_MANUFACTURER := realme
PRODUCT_BRAND := realme
PRODUCT_MODEL := RMX2202

PRODUCT_SYSTEM_NAME := RMX2202L1
PRODUCT_SYSTEM_DEVICE := RMX2202L1

PRODUCT_GMS_CLIENTID_BASE := android-oppo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="RMX2202-user 13 TP1A.220905.001 R.125b4f1-b1_515d release-keys" \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := realme/RMX2202/RMX2202L1:13/TP1A.220905.001/R.125b4f1-b1_515d:user/release-keys


# SuperiorExtended tags

TARGET_BOOT_ANIMATION_RES := 1080
TARGET_INCLUDE_MATLOG := true
TARGET_INCLUDE_PIXEL_CHARGER := true
USE_MOTO_CALCULATOR := true
TARGET_SUPPORTS_BLUR := true
SUPERIOR_UDFPS_ANIMATIONS := true
USE_MOTO_CLOCK := true
SYSTEM_OPTIMIZE_JAVA := true
SYSTEMUI_OPTIMIZE_JAVA := true
BUILD_WITH_GAPPS := false
TARGET_CORE_GMS := false
USE_QUICKPIC := true
USE_DUCKDUCKGO := false
