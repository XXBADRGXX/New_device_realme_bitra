#
# Copyright (C) 2018 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
TARGET_SUPPORTS_OMX_SERVICE := false
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Infinity-X stuff
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/infinity/config/common_full_phone.mk)

# Infinity-X Flags
TARGET_SHIPS_FULL_GAPPS := true 
WITH_GAPPS := true
INFINITY_BUILD_TYPE := UNOFFICIAL
INFINITY_MAINTAINER := XXBADR98GXX
TARGET_HAS_UDFPS := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_IS_PIXEL := true
TARGET_EXCLUDES_AUDIOFX := true

# Boot animation resolution.
TARGET_BOOT_ANIMATION_RES := 1080

# Inherit from bitra device
$(call inherit-product, device/realme/bitra/device.mk)


# Oplus Cam
PRODUCT_NO_CAMERA := true
TARGET_USES_OPLUS_CAMERA := true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := infinity_bitra
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

# Inherit from release keys
$(call inherit-product, vendor/infinity-priv/keys/keys.mk)
