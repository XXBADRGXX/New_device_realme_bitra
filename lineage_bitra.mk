#
# Copyright (C) 2018 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
TARGET_SUPPORTS_OMX_SERVICE := false
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from bitra device
$(call inherit-product, device/realme/bitra/device.mk)

# Inherit some common lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

#GMS
WITH_GMS := true

# AxionAOSP Specific Flags.
AXION_MAINTAINER := XXBADRGXX
AXION_PROCESSOR := Snapdragon®_870

# Camera
AXION_CAMERA_FRONT_INFO := 16
AXION_CAMERA_REAR_INFO := 64,8,2

# CPU
AXION_CPU_SMALL_CORES := 0,1,2,3,4,5
AXION_CPU_BIG_CORES := 6,7
AXION_CPU_BG := 0-2
AXION_CPU_FG := 0-7
AXION_CPU_LIMIT_BG := 0-1
AXION_CPU_UNLIMIT_UI := 0-7
AXION_CPU_LIMIT_UI := 0-5
AXION_CPU_DISPLAY := 6-7
AXION_CPU_AUDIO := 0-3

# Bypass Charging
BYPASS_CHARGE_SUPPORTED := true

# Boot animation resolution.
TARGET_BOOT_ANIMATION_RES := 1080

TARGET_DISABLE_EPPE := true
TARGET_ENABLE_BLUR := true
TARGET_PREBUILT_BCR := true
TARGET_INCLUDE_VIPERFX := true
TARGET_FACE_UNLOCK_SUPPORTED := true

PRODUCT_NAME := lineage_bitra
PRODUCT_DEVICE := bitra
PRODUCT_BRAND := realme
PRODUCT_MODEL := RMX3370
PRODUCT_MANUFACTURER := realme

PRODUCT_GMS_CLIENTID_BASE := android-oppo

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="RMX3370-user 13 TP1A.220905.001 1680523102693 release-keys" \
    BuildFingerprint=realme/RMX3370/RE879AL1:13/TP1A.220905.001/R.159caed-9b84-9b83:user/release-keys \
    DeviceName=RE879AL1 \
    DeviceProduct=RMX3370 \
    SystemDevice=RE879AL1 \
    SystemName=RMX3370
