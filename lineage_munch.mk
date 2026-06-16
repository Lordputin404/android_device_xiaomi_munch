#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from munch device
$(call inherit-product, device/xiaomi/munch/device.mk)

TARGET_ENABLE_BLUR := true
AXION_CAMERA_REAR_INFO := 64,8,2
AXION_CAMERA_FRONT_INFO := 20
AXION_PROCESSOR := Snapdragon®_870_5G
AXION_MAINTAINER := LordPutin
PERF_ANIM_OVERRIDE := false
TARGET_SUPPORTED_REFRESH_RATES := 60,120
TARGET_INCLUDE_GOOGLE_TELECOMM := false
TARGET_INCLUDE_PARTNER_SETUP := true
PERF_GOV_SUPPORTED := true
PERF_DEFAULT_GOV := schedutil
BYPASS_CHARGE_SUPPORTED := true
TARGET_INCLUDE_AXFX := true
TARGET_INCLUDES_LOS_PREBUILTS := true

PRODUCT_NAME := lineage_munch
PRODUCT_DEVICE := munch
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Poco
PRODUCT_MODEL := 22021211RG

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="munch-user 13 RKQ1.211001.001 V816.0.9.0.ULMMIXM release-keys" \
    BuildFingerprint=POCO/munch_global/munch:13/RKQ1.211001.001/V816.0.9.0.ULMMIXM:user/release-keys
