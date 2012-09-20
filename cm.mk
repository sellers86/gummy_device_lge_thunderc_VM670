# Release name
PRODUCT_RELEASE_NAME := OptimusV

TARGET_BOOTANIMATION_NAME := vertical-320x480

# Inherit some common CM stuff.
$(call inherit-product, vendor/Gummy/products/common_phone.mk)
$(call inherit-product, vendor/Gummy/products/cdma.mk)

#include qcom opensource features
$(call inherit-product, vendor/qcom/opensource/omx/mm-core/Android.mk)
$(call inherit-product, vendor/qcom/opensource/omx/mm-video/Android.mk)

# Inherit device configuration
$(call inherit-product, device/lge/VM670/VM670.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := VM670
PRODUCT_NAME := gummy_VM670
PRODUCT_BRAND := Virgin_Mobile
PRODUCT_MODEL := LG-VM670
PROUDCT_MANUFACTURER := LGE
PRODUCT_CHARACTERISTICS := phone

RODUCT_BUILD_PROP_OVERRIDES += \
	BUILD_ID=GWK74 \
	PRODUCT_NAME=VM670 \
	BUILD_DISPLAY_ID="GWK74 $(shell date +%m%d%Y)" \
	BUILD_FINGERPRINT="google/soju/crespo:4.0.3/GWK74/185293:user/release-keys" \
	PRIVATE_BUILD_DESC="soju-user 4.0.3 GWK74 185293 release-keys" \
	BUILD_NUMBER=${DATE}
	TARGET_BUILD_TYPE=user
