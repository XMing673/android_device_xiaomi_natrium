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

# Inherit from natrium device
$(call inherit-product, device/xiaomi/natrium/device.mk)

PRODUCT_DEVICE := natrium
PRODUCT_NAME := omni_natrium
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := MI 5s Plus
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="natrium-user 8.0.0 OPR1.170623.032 9.6.27 release-keys"

BUILD_FINGERPRINT := Xiaomi/natrium/natrium:8.0.0/OPR1.170623.032/9.6.27:user/release-keys
