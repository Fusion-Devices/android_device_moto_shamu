# Boot animation
TARGET_SCREEN_HEIGHT := 2560
TARGET_SCREEN_WIDTH := 1440

# Inherit some common Fusion stuff.
$(call inherit-product, vendor/fusion/config/common_phone.mk)

# Enhanced NFC
$(call inherit-product, vendor/fusion/config/nfc_enhanced.mk)

# Inherit device configuration
$(call inherit-product, device/moto/shamu/aosp_shamu.mk)

# Fusion overlays
DEVICE_PACKAGE_OVERLAYS += device/moto/shamu/overlay-fusion

## Device identifier. This must come after all inclusions
PRODUCT_NAME := shamu
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus 6

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=shamu \
    BUILD_FINGERPRINT=google/shamu/shamu:5.1.1/LMY48M/2167285:user/release-keys \
    PRIVATE_BUILD_DESC="shamu-user 5.1.1 LMY48M 2167285 release-keys"
