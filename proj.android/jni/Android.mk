LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

$(call import-add-path,$(LOCAL_PATH)/../../cocos2d)
$(call import-add-path,$(LOCAL_PATH)/../../cocos2d/external)
$(call import-add-path,$(LOCAL_PATH)/../../cocos2d/cocos)

LOCAL_MODULE := cocos2dcpp_shared

LOCAL_MODULE_FILENAME := libcocos2dcpp

#LOCAL_SRC_FILES := 
LOCAL_SRC_FILES := hellocpp/main.cpp \
		   ../../Classes/AppDelegate.cpp \
		   ../../Classes/controller.cpp \
		   ../../Classes/BaseTest.cpp \
		   ../../Classes/DrawNode3D.cpp \
		   ../../Classes/Sprite3DTest.cpp \
		   ../../Classes/VisibleRect.cpp \
		   ../../Classes/testBasic.cpp \

LOCAL_C_INCLUDES := $(LOCAL_PATH)/../../Classes

LOCAL_WHOLE_STATIC_LIBRARIES := cocos2dx_static
LOCAL_WHOLE_STATIC_LIBRARIES += cocosdenshion_static

#LOCAL_STATIC_LIBRARIES := cocos2dx_static


include $(BUILD_SHARED_LIBRARY)

$(call import-module,.)
