# common config for TF201 TF300T TF700T

BOARD_USES_GENERIC_AUDIO := false
# pre kitkat audio legacy policy fix for hotword (ok google) see http://review.cyanogenmod.org/#/c/126869/
BOARD_HAVE_PRE_KITKAT_AUDIO_BLOB := true
SENSORS_NEED_SETRATE_ON_ENABLE := true

#BOARD_EGL_NEEDS_LEGACY_FB := true
# Camera options
COMMON_GLOBAL_CFLAGS += -DNEEDS_VECTORIMPL_SYMBOLS

# Cardhu HAL libraries
BOARD_HAL_STATIC_LIBRARIES := \
    libdumpstate.cardhu \
    libhealthd.cardhu

# inherit from the proprietary version
#-include vendor/asus/tf300t/BoardConfigVendor.mk

# Board naming
TARGET_NO_RADIOIMAGE := true
TARGET_BOOTLOADER_BOARD_NAME := cardhu
TARGET_NO_BOOTLOADER := true

TARGET_BOARD_PLATFORM := tegra

TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a9

# Boot/Recovery image settings  
BOARD_KERNEL_CMDLINE := androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE :=

# Video settings
BOARD_HAVE_PIXEL_FORMAT_INFO := true
#TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true
BOARD_EGL_WORKAROUND_BUG_10194508 := true

# Misc display settings
#BOARD_NO_ALLOW_DEQUEUE_CURRENT_BUFFER := true #TOCHECK if we still need the missing code

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_BLUEDROID_VENDOR_CONF := device/asus/tf300t/bluetooth/vnd.txt
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR ?= device/asus/tf300t/bluetooth/$(TARGET_DEVICE)


# Wifi related defines
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
WPA_SUPPLICANT_VERSION      := VER_0_8_X
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER        := NL80211
BOARD_HOSTAPD_PRIVATE_LIB   := lib_driver_cmd_bcmdhd
BOARD_WLAN_DEVICE           := bcmdhd
WIFI_DRIVER_FW_PATH_PARAM   := "/sys/module/bcmdhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_STA     := "/system/vendor/firmware/bcm/fw_bcmdhd.bin"
WIFI_DRIVER_FW_PATH_AP      := "/system/vendor/firmware/bcm/fw_bcmdhd_apsta.bin"

TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 8388608
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 8388608
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 536870912
#BOARD_USERDATAIMAGE_PARTITION_SIZE := 29850022707
BOARD_FLASH_BLOCK_SIZE := 4096
TARGET_USERIMAGES_SPARSE_EXT_DISABLED := true

BOARD_CACHEIMAGE_PARTITION_SIZE := 448790528
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4


# Try to build the kernel
TARGET_KERNEL_SOURCE := '' #TODO kernel/asus/$(TARGET_DEVICE)
TARGET_KERNEL_CONFIG := katkernel_defconfig

# Prebuilt Kernel Fallback
TARGET_PREBUILT_KERNEL := device/asus/tf300t/kernel

# Custom Tools
#TARGET_RELEASETOOL_OTA_FROM_TARGET_SCRIPT := device/asus/tf300t/releasetools/tf300t_ota_from_target_files

# SELinux Defines
BOARD_SEPOLICY_DIRS := \
    device/asus/tf300t/sepolicy

# Recovery Options
#BOARD_CUSTOM_BOOTIMG_MK := device/asus/tf300t/recovery/recovery.mk
TARGET_RECOVERY_FSTAB := device/asus/tf300t/ramdisk/fstab.cardhu
RECOVERY_FSTAB_VERSION := 2


ARCH_ARM_HIGH_OPTIMIZATION := true
#DEBUG_NO_STDCXX11 := yes
TARGET_ENABLE_NON_PIE_SUPPORT := true
#TARGET_BOARD_CANT_REALLOCATE_OMX_BUFFERS := true
CLANG_O3 := true
STRICT_ALIASING := true
GRAPHITE_OPTS := true
ENABLE_GCCONLY := true
USE_PIPE := true
ENABLE_SANITIZE := true
ENABLE_GOMP := true
TARGET_GCC_VERSION_EXP := 5.4
#TARGET_GCC_VERSION_ARM := 5.4

