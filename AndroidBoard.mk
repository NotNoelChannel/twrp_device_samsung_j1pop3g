LOCAL_PATH := $(call my-dir)

ifneq ($(filter j1pop3g,$(TARGET_DEVICE)),)
include $(call all-makefiles-under,$(LOCAL_PATH))
endif

include $(CLEAR_VARS)
ALL_PREBUILT += $(INSTALLED_KERNEL_TARGET)
