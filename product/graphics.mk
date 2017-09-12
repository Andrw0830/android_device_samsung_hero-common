# Packages
PRODUCT_PACKAGES += \
	libion_exynos \
	libfimg

# Permissions
PRODUCT_COPY_FILES += \
	frameworks/native/data/etc/android.hardware.vulkan.level-0.xml:system/etc/permissions/android.hardware.vulkan.level.xml \
	frameworks/native/data/etc/android.hardware.vulkan.version-1_0_3.xml:system/etc/permissions/android.hardware.vulkan.version.xml

# Properties
PRODUCT_PROPERTY_OVERRIDES += \
	ro.bq.gpu_to_cpu_unsupported=1 \
	ro.opengles.version=196610 \
	ro.sf.lcd_density=640 \
	debug.hwc.force_gpu=1

# Properties - HWC - not used on cm/aosp
PRODUCT_PROPERTY_OVERRIDES += \
	debug.hwc.winupdate=1
