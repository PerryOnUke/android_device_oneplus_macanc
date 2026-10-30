#
# Copyright (C) 2026 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from macanc device
$(call inherit-product, device/oneplus/macanc/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_macanc
PRODUCT_DEVICE := macanc
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := PLR110

# Lunaris
LUNARIS_BUILD_TYPE := Community
WITH_GMS := true
TARGET_OPTIMIZED_DEXOPT := true
USE_REALITY_ENGINE := true
WITH_PIXEL_LAUNCHER := false
TARGET_USE_WALLPAPERS := false
TARGET_USE_MAPS := true
TARGET_USE_FILES := true
TARGET_USE_GPHOTOS := true
SURFACE_FLINGER_BOOST := true
TARGET_ENABLE_BLUR := true

# Display
TARGET_SUPPORTED_REFRESH_RATES := 60,90,120,144,165
HBM_SUPPORTED := true
HBM_NODE := /sys/kernel/oplus_display/hbm

# Nessun nodo sysfs bypass-charge OPlus verificato: toggle Lunaris disabilitato.
BYPASS_CHARGE_SUPPORTED := false

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="qssi-user 16 BP2A.250605.015 1782990090751 release-keys" \
    BuildFingerprint=OnePlus/PLR110/OP6117L1:16/BP2A.250605.015/B.2b5b5cd-6c66aa-6bea3a:user/release-keys \
    DeviceName=OP6117L1 \
    DeviceProduct=PLR110 \
    SystemDevice=OP6117L1 \
    SystemName=PLR110
