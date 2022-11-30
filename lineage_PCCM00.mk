#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from pccm00 device
$(call inherit-product, device/oppo/PCCM00/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_PCCM00
PRODUCT_DEVICE := PCCM00
PRODUCT_MANUFACTURER := OPPO
PRODUCT_MODEL := OPPO Reno 10x zoom
PRODUCT_BRAND := OPPO

PRODUCT_SYSTEM_NAME := PCCM00
PRODUCT_SYSTEM_DEVICE := PCCM00

PRODUCT_GMS_CLIENTID_BASE := android-oppo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="OP46C3-user 12 SKQ1.211113.001 P.202210140345 release-keys" \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := OPPO/PCCM00/OP46C3:12/SKQ1.211113.001/P.202210140345:user/release-keys
