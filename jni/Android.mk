LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE    := gmodule
LOCAL_C_INCLUDES += \
	$(LOCAL_PATH)/ \
	$(LOCAL_PATH)/glib \
	$(LOCAL_PATH)/glib/glib \

LOCAL_SRC_FILES := \
		gmodule.c

LOCAL_SHARED_LIBRARIES := glib

LOCAL_CFLAGS := -DHAVE_CONFIG_H

include $(BUILD_SHARED_LIBRARY)
include $(LOCAL_PATH)/glib/Android.mk
