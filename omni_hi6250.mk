#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from hi6250 device
$(call inherit-product, device/unknown/hi6250/device.mk)

PRODUCT_DEVICE := hi6250
PRODUCT_NAME := omni_hi6250
PRODUCT_BRAND := hi6250
PRODUCT_MODEL := hi6250
PRODUCT_MANUFACTURER := unknown

PRODUCT_GMS_CLIENTID_BASE := android-unknown

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="hi6250-user 6.0 MRA58K eng.jenkins.20180606.124225 test-keys"

BUILD_FINGERPRINT := hi6250/hi6250/hi6250:6.0/MRA58K/jenkins06061243:user/test-keys
