LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES:=                     \
        ColorConverter.cpp            \
        SoftwareRenderer.cpp

LOCAL_C_INCLUDES := \
        $(TOP)/frameworks/native/include/media/openmax \
        $(TOP)/hardware/msm7k

LOCAL_MODULE:= libstagefright_color_conversion

ifeq ($(strip $(ANDROVM_YV12_NOT_SUPPORTED)),true)
    LOCAL_CPPFLAGS += -DANDROVM_YV12_NOT_SUPPORTED=1
endif

include $(BUILD_STATIC_LIBRARY)
