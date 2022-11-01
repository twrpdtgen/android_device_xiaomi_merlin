#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from merlin device
$(call inherit-product, device/xiaomi/merlin/device.mk)

PRODUCT_DEVICE := merlin
PRODUCT_NAME := omni_merlin
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := M2003J15SC
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="merlin-user 10 QP1A.190711.020 V12.0.5.0.QJOMIXM release-keys"

BUILD_FINGERPRINT := Redmi/merlin_global/merlin:10/QP1A.190711.020/V12.0.5.0.QJOMIXM:user/release-keys
