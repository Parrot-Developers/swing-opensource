LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := libconfig
LOCAL_DESCRIPTION := Simple library for processing structured configuration files
LOCAL_CATEGORY_PATH := libs

LOCAL_AUTOTOOLS_VERSION := 1.5
LOCAL_AUTOTOOLS_ARCHIVE := libconfig-$(LOCAL_AUTOTOOLS_VERSION).tar.gz
LOCAL_AUTOTOOLS_SUBDIR := libconfig-$(LOCAL_AUTOTOOLS_VERSION)

LOCAL_AUTOTOOLS_CONFIGURE_ARGS := --disable-examples

# The c++ api requires exceptions
ifeq ("$(TARGET_USE_CXX_EXCEPTIONS)","1")
  LOCAL_AUTOTOOLS_CONFIGURE_ARGS += --enable-cxx
else
  LOCAL_AUTOTOOLS_CONFIGURE_ARGS += --disable-cxx
endif

LOCAL_EXPORT_LDLIBS := -lconfig

include $(BUILD_AUTOTOOLS)

