LOCAL_PATH := device/google/msm8x53_som

TARGET_BOARD_PLATFORM := msm8x53
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := msm8x53

TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

BOARD_RECOVERYIMAGE_PARTITION_SIZE := 33554432

BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_HAS_NO_REAL_SDCARD := true

BOARD_SUPPRESS_SECURE_ERASE := true
BOARD_RECOVERY_SWIPE := true
BOARD_USES_MMCUTILS := true
BOARD_SUPPRESS_EMMC_WIPE := true
BOARD_CHARGER_SHOW_PERCENTAGE := true
RECOVERY_SDCARD_ON_DATA := true

TW_EXCLUDE_SUPERSU := true
TW_INCLUDE_CRYPTO := true
TW_INPUT_BLACKLIST := "hbtp_vm"
TW_SCREEN_BLANK_ON_BOOT := true
TW_THEME := portrait_hdpi                     # Set the exact theme you wanna use. If resulation doesn't match, define the height/width
DEVICE_RESOLUTION := 1200x1920                 # The Resolution of your Device
TARGET_SCREEN_HEIGHT := 1920                    # The height
TARGET_SCREEN_WIDTH := 1200                      # The width

TW_INCLUDE_NTFS_3G := true                    # Include NTFS Filesystem Support
TW_INCLUDE_FUSE_EXFAT := true                 # Include Fuse-ExFAT Filesystem Support
TWRP_INCLUDE_LOGCAT := true                   # Include LogCat Binary
TW_INCLUDE_FB2PNG := true                     # Include Screenshot Support
TW_DEFAULT_LANGUAGE := en                     # Set Default Language 
TW_EXTRA_LANGUAGES := false

TARGET_IS_64_BIT := false                      # true/false: Determine if the device is 64-bit or not
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/prebuilt/kernel
TARGET_PREBUILT_RECOVERY_KERNEL := $(LOCAL_PATH)/prebuilt/kernel

BOARD_KERNEL_CMDLINE := console=ttyMSM0,115200,n8 earlyprintk androidboot.hardware=msm8x53 firmware_class.path=/oem/firmware
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_RAMDISK_OFFSET := 0x01000000
BOARD_KERNEL_TAGS_OFFSET := 0x00000100
BOARD_MKBOOTIMG_ARGS += --ramdisk_offset $(BOARD_RAMDISK_OFFSET)
BOARD_MKBOOTIMG_ARGS += --tags_offset $(BOARD_KERNEL_TAGS_OFFSET)
BOARD_KERNEL_IMAGE_NAME := zImage
TARGET_KERNEL_CONFIG := msm8x53_som_defconfig
TARGET_KERNEL_SOURCE := kernel/google/msm8x53_som

# Kernel - prebuilt
TARGET_FORCE_PREBUILT_KERNEL := true
ifeq ($(TARGET_FORCE_PREBUILT_KERNEL),true)
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/kernel
endif

TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/recovery/root/etc/recovery.fstab

TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := generic              # Change the value to "generic" if build fails suddenly due to arch error
TARGET_CPU_ABI_LIST := $(TARGET_CPU_ABI),$(TARGET_CPU_ABI2)










#DEVICE_PATH := device/google/msm8x53_som

# For building with minimal manifest
#ALLOW_MISSING_DEPENDENCIES := true

# A/B
#AB_OTA_UPDATER := true
#AB_OTA_PARTITIONS += \
    system \
    vbmeta
#BOARD_USES_RECOVERY_AS_BOOT := true

#TARGET_USES_64_BIT_BINDER := true

# APEX
#OVERRIDE_TARGET_FLATTEN_APEX := true

# Display
#TARGET_SCREEN_DENSITY := 320

# Partitions
BOARD_BUILD_SYSTEM_ROOT_IMAGE := true
BOARD_FLASH_BLOCK_SIZE := 131072 # (BOARD_KERNEL_PAGESIZE * 64)
BOARD_BOOTIMAGE_PARTITION_SIZE := 33554432
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 33554432
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_SYSTEMIMAGE_PARTITION_TYPE := ext4
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_COPY_OUT_VENDOR := vendor

# Platform
TARGET_BOARD_PLATFORM := msm8x53

# Recovery
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# Security patch level
VENDOR_SECURITY_PATCH := 2021-08-01

# Verified Boot
BOARD_AVB_ENABLE := false
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --flags 3

# Hack: prevent anti rollback
PLATFORM_SECURITY_PATCH := 2099-12-31
VENDOR_SECURITY_PATCH := 2099-12-31
PLATFORM_VERSION := 16.1.0

# TWRP Configuration
TW_EXTRA_LANGUAGES := true
TW_SCREEN_BLANK_ON_BOOT := true
TW_USE_TOOLBOX := true
TW_INCLUDE_REPACKTOOLS := true
