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

# Inherit some common RisingOS stuff.
$(call inherit-product, vendor/rising/config/rising.mk)

PRODUCT_NAME := rising_cupidr
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
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := realme/RMX2202/RMX2202L1:13/TP1A.220905.001/R.13639a6-a-2bdaa:user/release-keys


# Rising tags
# chipset flag enclose var with "" if more than one
# friendly tip: builders can use init_xxx.cpp as workaround for spacing
# e.g. property_override("ro.rising.chipset", "Snapdragon 870 5G");
RISING_CHIPSET := "Snapdragon-888"

# chipset flag enclose var with "" if more than one
# friendly tip: builders can use init_xxx.cpp as workaround for spacing
# e.g. property_override("ro.rising.maintainer", "maintainer");
RISING_MAINTAINER := "SissioMisio"

# chipset flag enclose var with "" if more than one
# this will reflect on build/display version, a firmware package/zip name
# e.g. risingDroid-7.0-COMMUNITY-device-AOSP.zip - AOSP is the default package type, WITH_GMS will override the package type to PIXEL
RISING_PACKAGE_TYPE := "VANILLA_AOSP"

WITH_GMS := false
TARGET_CORE_GMS := false

# disable/enable blur support, default is false
TARGET_ENABLE_BLUR := true

# Enable kernel inline building
INLINE_KERNEL_BUILDING := true

# UDFPS ICONS/ANIMATIONS
TARGET_HAS_UDFPS := true

# Spoof build description/fingerprint as pixel device
TARGET_USE_PIXEL_FINGERPRINT := false
