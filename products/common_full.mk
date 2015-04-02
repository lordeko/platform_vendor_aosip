# Copy prebuilt files.
PRODUCT_COPY_FILES += \
    vendor/aosip/prebuilt/common/bootanimations/BOOTANIMATION-1440x2560.zip:system/media/bootanimation.zip \
    vendor/aosip/prebuilt/common/etc/apns-conf.xml:system/etc/apns-conf.xml

# Backup Tool
ifneq ($(WITH_GMS),true)
PRODUCT_COPY_FILES += \
    vendor/aosip/prebuilt/common/bin/50-aosip.sh:system/addon.d/50-aosip.sh \
    vendor/aosip/prebuilt/common/bin/backuptool.sh:install/bin/backuptool.sh \
    vendor/aosip/prebuilt/common/bin/backuptool.functions:install/bin/backuptool.functions
endif

#Root by default
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.root_access=1

# SuperSU
PRODUCT_COPY_FILES += \
    vendor/aosip/prebuilt/common/etc/UPDATE-SuperSU.zip:system/addon.d/UPDATE-SuperSU.zip \
    vendor/aosip/prebuilt/common/etc/init.d/99SuperSUDaemon:system/etc/init.d/99SuperSUDaemon

# Additional prebuilt APKs and libs
PRODUCT_PACKAGES += \
    GoogleCamera

# Google Camera dependancies
PRODUCT_COPY_FILES += \
    vendor/aosip/proprietary/common/lib/libgcam.so:system/lib/libgcam.so \
    vendor/aosip/proprietary/common/lib/libgcam_swig_jni.so:system/lib/libgcam_swig_jni.so \
    vendor/aosip/proprietary/common/lib/libjni_jpegutil.so:system/lib/libjni_jpegutil.so \
    vendor/aosip/proprietary/common/lib/libjni_tinyplanet.so:system/lib/libjni_tinyplanet.so \
    vendor/aosip/proprietary/common/lib/libjpeg.so:system/lib/libjpeg.so \
    vendor/aosip/proprietary/common/lib/liblightcycle.so:system/lib/liblightcycle.so \
    vendor/aosip/proprietary/common/lib/libnativehelper_compat_libc++.so:system/lib/libnativehelper_compat_libc++.so \
    vendor/aosip/proprietary/common/lib/librefocus.so:system/lib/librefocus.so \
    vendor/aosip/proprietary/common/lib/librs.layered_filter_f32.so:system/lib/librs.layered_filter_f32.so \
    vendor/aosip/proprietary/common/lib/librs.layered_filter_fast_f32.so:system/lib/librs.layered_filter_fast_f32.so \
    vendor/aosip/proprietary/common/lib/librsjni.so:system/lib/librsjni.so \
    vendor/aosip/proprietary/common/lib/libRSSupport.so:system/lib/libRSSupport.so


# Inherit common product build prop overrides
-include vendor/aosip/products/common_versions.mk
