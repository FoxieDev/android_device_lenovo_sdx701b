# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_minimal.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/embedded.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from msm8x53_som device
#$(call inherit-product, device/google/msm8x53_som/device.mk)

PRODUCT_COPY_FILES += device/google/msm8x53_som/prebuilt/kernel:kernel

PRODUCT_DEVICE := msm8x53_som
PRODUCT_NAME := omni_msm8x53_som
PRODUCT_BRAND := google
PRODUCT_MODEL := msm8x53_som
PRODUCT_MANUFACTURER := google

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp

PRODUCT_GMS_CLIENTID_BASE := android-google

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="iot_msm8x53_som-userdebug 8.1.0 OIM6.190107.017 5307861 dev-keys"

BUILD_FINGERPRINT := Things/iot_msm8x53_som/msm8x53_som:8.1.0/OIM6.190107.017/5307861:userdebug/dev-keys
