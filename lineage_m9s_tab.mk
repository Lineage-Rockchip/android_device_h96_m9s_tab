#
# Copyright (C) 2026 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# BRING-UP ONLY -- gives ro.adb.secure=0 / ro.debuggable=1.
WITH_ADB_INSECURE := true

# Inherit some common AOSP stuff
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_tablet_wifionly.mk)

# Inherit device configuration
$(call inherit-product, $(LOCAL_PATH)/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_BRAND := H96
PRODUCT_DEVICE := m9s_tab
PRODUCT_MANUFACTURER := rockchip
PRODUCT_MODEL := H96 Max M9S
PRODUCT_NAME := lineage_m9s_tab
PRODUCT_SYSTEM_NAME := m9s

PRODUCT_GMS_CLIENTID_BASE := android-rockchip

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="adt3-user 14 UTM1.240509.001 11749621 release-keys" \
    DeviceProduct=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := google/adt3/adt3:14/UTM1.240509.001/11749621:user/release-keys
