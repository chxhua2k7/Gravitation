TARGET := iphone:clang:16.5:15.0
INSTALL_TARGET_PROCESSES = SpringBoard
ARCHS = arm64 arm64e
THEOS_PACKAGE_SCHEME = rootless

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = Gravitation

Gravitation_FILES = Tweak.xm
Gravitation_CFLAGS = -fobjc-arc
Gravitation_FRAMEWORKS = UIKit CoreMotion

include $(THEOS)/makefiles/tweak.mk

SUBPROJECTS += gravitationprefs
include $(THEOS)/makefiles/aggregate.mk
