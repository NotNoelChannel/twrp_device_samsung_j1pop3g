$(call inherit-product, vendor/omni/config/common.mk)
$(call inherit-product, build/target/product/embedded.mk)

$(call inherit-product, build/target/product/full_base_telephony.mk)
$(call inherit-product, build/target/product/languages_small.mk)

PRODUCT_COPY_FILES += \
    device/samsung/j1pop3g/prebuilt/zImage:kernel

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := j1pop3g
PRODUCT_NAME := omni_j1pop3g
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-J110H
PRODUCT_MANUFACTURER := samsung
PRODUCT_RELEASE_NAME := Samsung Galaxy J1 ace DUOS
TARGET_VENDOR := samsung
