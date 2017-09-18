## Specify phone tech before including full_phone

# Release name
PRODUCT_RELEASE_NAME := virgo

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/xiaomi/virgo/device_virgo.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := virgo
PRODUCT_NAME := lineage_virgo
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := MI NOTE LTE
PRODUCT_MANUFACTURER := Xiaomi
