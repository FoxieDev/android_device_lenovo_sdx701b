ifneq ($(filter msm8x53_som,$(TARGET_DEVICE)),)
LOCAL_PATH := device/google/msm8x53_som
include $(call all-makefiles-under,$(LOCAL_PATH))
endif
