# Inherit some common AOSP stuff.
$(call inherit-product, vendor/aosp/common.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/fortuna3g/full_fortuna3g.mk)

# Setup device configuration
PRODUCT_DEVICE := fortuna3g
PRODUCT_NAME := aosp_fortuna3g

# Boot animation
TARGET_SCREEN_WIDTH := 540
TARGET_SCREEN_HEIGHT := 960

# Build Type
EXTENDED_BUILD_TYPE=OFFICIAL

# Use Magisk
DEFAULT_ROOT_METHOD := magisk

# Build Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=fortuna3g \
    BUILD_FINGERPRINT=samsung/fortuna3g/fortuna3g:7.1.2/NJH47B/06181925:userdebug/release-keys \
    PRIVATE_BUILD_DESC="fortuna3g-userdebug 7.1.2 NJH47B 06181925 release-keys"
