LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

ALL_PREBUILT += $(INSTALLED_KERNEL_TARGET)

#----------------------------------------------------------------------
# extra images
#----------------------------------------------------------------------
include build/core/generate_extra_images.mk

# include the non-open-source counterpart to this file
-include vendor/xiaomi/virgo/AndroidBoardVendor.mk

# WiFi symlinks
$(shell mkdir -p $(TARGET_OUT)/lib/modules; \
        ln -sf /system/lib/modules/pronto/pronto_wlan.ko \
               $(TARGET_OUT)/lib/modules/wlan.ko)
# END WiFi symlinks
