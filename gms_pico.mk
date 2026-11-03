#
# Cleaned Core / Minimal GApps for LineageOS 24.0
# Derived from RisingOS vendor_gms
#

# APEX
DISABLE_DEXPREOPT_CHECK := true

PRODUCT_PACKAGES += \
    com.google.android.gmssystem.prodvic

# ==========================================
# CORE GMS & FRAMEWORK
# ==========================================

# system_ext/priv-app
PRODUCT_PACKAGES += \
    GoogleServicesFramework

# Phonesky (Google Play Store)
PRODUCT_PACKAGES += \
    Phonesky

# PrebuiltGmsCore (Google Play Services & Dynamite Modules)
PRODUCT_PACKAGES += \
    PrebuiltGmsCoreVic_AdsDynamite \
    PrebuiltGmsCoreVic_CronetDynamite \
    PrebuiltGmsCoreVic_DynamiteLoader \
    PrebuiltGmsCoreVic_DynamiteModulesA \
    PrebuiltGmsCoreVic_DynamiteModulesC \
    PrebuiltGmsCoreVic_GoogleCertificates \
    PrebuiltGmsCoreVic_MapsDynamite \
    PrebuiltGmsCoreVic_MeasurementDynamite \
    AndroidPlatformServices \
    MlkitBarcodeUIPrebuilt \
    SpoonPcPrebuilt \
    TfliteDynamitePrebuilt \
    VisionBarcodePrebuilt

# ==========================================
# OPTIONAL CORE DEPENDENCIES (Safe & Light)
# ==========================================

# system/priv-app
PRODUCT_PACKAGES += \
    ConfigUpdater \
    GooglePackageInstaller \
    TagGoogle

# system/app
PRODUCT_PACKAGES += \
    GoogleExtShared \
    GooglePrintRecommendationService

# Blobs configuration from vendor tree
$(call inherit-product, vendor/gms/product/blobs/product_blobs.mk)
$(call inherit-product, vendor/gms/system/blobs/system_blobs.mk)
$(call inherit-product, vendor/gms/system_ext/blobs/system-ext_blobs.mk)
