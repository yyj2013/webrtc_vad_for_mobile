####################################################################################
# Author		: yanyongjie
# Date			: 2017/07/13
####################################################################################

MY_DIR_PATH := $(call my-dir)
MCOM_PATH := $(MY_DIR_PATH)
LOCAL_PATH := $(MCOM_PATH)/../../

include $(CLEAR_VARS)

LOCAL_MODULE := libwebrtc_vad
LOCAL_MODULE_FILENAME := libwebrtc_vad
LOCAL_CFLAGS := -D_ANDROID 
LOCAL_LDLIBS := -llog -lm -lz

LOCAL_LDFLAGS := -Wl,--no-warn-mismatch -fPIE -fPIC  -Wl,--fix-cortex-a8
LOCAL_ALLOW_UNDEFINED_SYMBOLS := true

INC_DIRS = \
	-I$(LOCAL_PATH)/../../webrtc\
	-I$(LOCAL_PATH)/../../webrtc/common_audio/signal_processing/\
	-I$(LOCAL_PATH)/../../webrtc/common_audio/signal_processing/include\
	-I$(LOCAL_PATH)/../../webrtc/common_audio/vad\
	-I$(LOCAL_PATH)/../../webrtc/common_audio/vad/include\

LOCAL_CFLAGS += $(INC_DIRS)

LOCAL_SRC_FILES := \
    webrtc/common_audio/vad/vad_core.c\
    webrtc/common_audio/vad/vad_filterbank.c\
    webrtc/common_audio/vad/vad_gmm.c\
    webrtc/common_audio/vad/vad_sp.c\
    webrtc/common_audio/vad/webrtc_vad.c\
    webrtc/common_audio/signal_processing/complex_bit_reverse.c\
    webrtc/common_audio/signal_processing/complex_fft.c\
    webrtc/common_audio/signal_processing/cross_correlation.c\
    webrtc/common_audio/signal_processing/division_operations.c\
    webrtc/common_audio/signal_processing/downsample_fast.c\
    webrtc/common_audio/signal_processing/energy.c\
    webrtc/common_audio/signal_processing/get_scaling_square.c\
    webrtc/common_audio/signal_processing/min_max_operations.c\
    webrtc/common_audio/signal_processing/real_fft.c\
    webrtc/common_audio/signal_processing/resample_48khz.c\
    webrtc/common_audio/signal_processing/resample_by_2_internal.c\
    webrtc/common_audio/signal_processing/resample_fractional.c\
    webrtc/common_audio/signal_processing/spl_init.c\
    webrtc/common_audio/signal_processing/vector_scaling_operations.c\


include $(BUILD_STATIC_LIBRARY)
