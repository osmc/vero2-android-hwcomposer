# Copyright (C) 2011 Amlogic
#
#

LOCAL_PATH := $(call my-dir)

# HAL module implemenation stored in
# hw/<OVERLAY_HARDWARE_MODULE_ID>.<ro.product.board>.so
include $(CLEAR_VARS)

LOCAL_MODULE_RELATIVE_PATH := hw
LOCAL_SHARED_LIBRARIES := liblog libEGL libutils
LOCAL_SRC_FILES := hwcomposer.cpp
LOCAL_C_INCLUDES += hardware/amlogic/gralloc
LOCAL_MODULE := hwcomposer.$(TARGET_PRODUCT)
LOCAL_CFLAGS += -DLOG_TAG=\"hwcomposer\"
LOCAL_MODULE_TAGS := optional
include $(BUILD_SHARED_LIBRARY)
