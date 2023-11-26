DEVICE_PATH := device/infinix/Nova
# For building with minimal manifest
ALLOW_MISSING_DEPENDENCIES := true

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := generic
TARGET_CPU_VARIANT_RUNTIME := cortex-a53
TARGET_USES_64_BIT_BINDER := true

# Assert
TARGET_OTA_ASSERT_DEVICE := Nova
#APEX
OVERRIDE_TARGET_FLATTEN_APEX := true
# Bootloader"
TARGET_BOOTLOADER_BOARD_NAME := 06081330BX102666
TARGET_NO_BOOTLOADER := true

# Platform
TARGET_BOARD_PLATFORM := mt6761

TARGET_SCREEN_DENSITY := 320

#MTK
BOARD_USES_MTK_HARDWARE := true

BOARD_KERNEL_CMDLINE := bootopt=64S3,32S1,32S1 buildvariant=user
BOARD_BOOTIMG_HEADER_VERSION := 2
BOARD_KERNEL_BASE := 0x40000000
BOARD_NAME := CY-X657B-H6117-D
BOARD_KERNEL_PAGESIZE := 2048
BOARD_RAMDISK_OFFSET := 0x11b00000
BOARD_TAGS_OFFSET := 0x07880000
BOARD_KERNEL_TAGS_OFFSET := 0x07880000
BOARD_DTB_OFFSET := 0x07880000
BOARD_RECOVERY_DTBO_OFFSET := 18907136
BOARD_SECOND_OFFSET := 0xc0000000
BOARD_KERNEL_IMAGE_NAME := kernel
TARGET_KERNEL_ARCH := arm
TARGET_KERNEL_HEADER_ARCH := arm
TARGET_KERNEL_SOURCE := kernel/infinix/Nova
TARGET_KERNEL_CONFIG := Nova_defconfig
BOARD_INCLUDE_RECOVERY_DTBO := true
BOARD_HASH_TYPE := sha1

TARGET_PREBUILT_DTB := $(DEVICE_PATH)/prebuilt/dtb
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/kernel
BOARD_PREBUILT_DTBOIMAGE := $(DEVICE_PATH)/prebuilt/recovery_dtbo

BOARD_MKBOOTIMG_ARGS += --ramdisk_offset $(BOARD_RAMDISK_OFFSET)
BOARD_MKBOOTIMG_ARGS += --tags_offset $(BOARD_KERNEL_TAGS_OFFSET)
BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOTIMG_HEADER_VERSION)
BOARD_MKBOOTIMG_ARGS += --dtb $(TARGET_PREBUILT_DTB)
BOARD_MKBOOTIMG_ARGS += --recovery_dtbo $(BOARD_PREBUILT_DTBOIMAGE)
BOARD_MKBOOTIMG_ARGS += --dtb_offset $(BOARD_DTB_OFFSET)
BOARD_MKBOOTIMG_ARGS += --tags_offset $(BOARD_TAGS_OFFSET)
BOARD_MKBOOTIMG_ARGS += --pagesize $(BOARD_KERNEL_PAGESIZE)
BOARD_MKBOOTIMG_ARGS += --second_offset $(BOARD_SECOND_OFFSET)
BOARD_MKBOOTIMG_ARGS += --board $(BOARD_NAME)
#AVB
BOARD_AVB_ENABLE := true
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --flags 3
BOARD_AVB_RECOVERY_KEY_PATH := external/avb/test/data/testkey_rsa2048.pem
BOARD_AVB_RECOVERY_ALGORITHM := SHA256_RSA2048
BOARD_AVB_RECOVERY_ROLLBACK_INDEX := 1
BOARD_AVB_RECOVERY_ROLLBACK_INDEX_LOCATION := 1

#partition
BOARD_FLASH_BLOCK_SIZE := 131072 # (BOARD_KERNEL_PAGESIZE * 64)
BOARD_BOOTIMAGE_PARTITION_SIZE := 40894464
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 40894464
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_SYSTEMIMAGE_PARTITION_TYPE := ext4
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_COPY_OUT_VENDOR := vendor
BOARD_SUPER_PARTITION_SIZE := 9122611200
BOARD_SUPER_PARTITION_GROUPS := main
BOARD_MAIN_SIZE := 9122611200
BOARD_MAIN_PARTITION_LIST := system system_ext vendor product
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# System as root
BOARD_SUPPRESS_SECURE_ERASE := true

# Recovery

# Crypto


# # Hack: prevent anti roll back
PLATFORM_SECURITY_PATCH := 2099-12-31
VENDOR_SECURITY_PATCH := 2099-12-31
PLATFORM_VERSION := 99.87.36
PLATFORM_VERSION_LAST_STABLE := $(PLATFORM_VERSION)

TW_RECOVERY_ADDITIONAL_RELINK_FILES += \
    $(TARGET_OUT_VENDOR_SHARED_LIBRARIES)/libkeymaster4support.so \
    $(TARGET_OUT_VENDOR_EXECUTABLES)/hw/android.hardware.keymaster@4.0-service.beanpod \
    $(TARGET_OUT_VENDOR_EXECUTABLES)/hw/vendor.mediatek.hardware.keymaster_attestation@1.1-service \
    $(TARGET_OUT_VENDOR_SHARED_LIBRARIES)/libkeymaster4.so \
$(TARGET_OUT_SHARED_LIBRARIES)/libpuresoftkeymasterdevice.so \
    $(TARGET_OUT_VENDOR_SHARED_LIBRARIES)/hw/vendor.mediatek.hardware.keymaster_attestation@1.1-impl.so \
  $(TARGET_OUT_VENDOR_SHARED_LIBRARIES)/vendor.mediatek.hardware.keymaster_attestation@1.0.so \
    $(TARGET_OUT_VENDOR_SHARED_LIBRARIES)/vendor.mediatek.hardware.keymaster_attestation@1.1.so 
    
    
    
# Properties
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/recovery/root/system/etc/recovery.fstab
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"

# ADDING LOG
TARGET_USES_LOGD := true
TWRP_INCLUDE_LOGCAT := true

## TWRP-Specific configuration
TW_THEME := portrait_hdpi
RECOVERY_SDCARD_ON_DATA := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := /dev/block/loop%d
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
TW_DEFAULT_BRIGHTNESS := 1200
TW_MAX_BRIGHTNESS := 2047
TW_Y_OFFSET := 80
TW_H_OFFSET := -80
TW_EXCLUDE_DEFAULT_USB_INIT := true
TW_EXCLUDE_PYTHON := true
TW_EXCLUDE_NANO := true
TW_EXCLUDE_TWRPAPP := true
TW_EXTRA_LANGUAGES := true
TW_INCLUDE_NTFS_3G := true
TW_NO_SCREEN_BLANK := true
TW_SCREEN_BLANK_ON_BOOT := true
TW_INCLUDE_REPACKTOOLS := true
TW_HAS_MTP := true
TW_INCLUDE_RESETPROP := true
# Maintainer/Version
TW_DEVICE_VERSION := Massatrio16

    
