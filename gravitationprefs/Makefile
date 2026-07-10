TARGET := iphone:clang:16.5:15.0
INSTALL_TARGET_PROCESSES = Preferences

include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = GravitationPrefs

GravitationPrefs_FILES = $(wildcard *.m)
GravitationPrefs_CFLAGS = -fobjc-arc
GravitationPrefs_FRAMEWORKS = UIKit CoreMotion
GravitationPrefs_PRIVATE_FRAMEWORKS = Preferences
GravitationPrefs_INSTALL_PATH = /Library/PreferenceBundles

include $(THEOS)/makefiles/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/GravitationPrefs.plist$(ECHO_END)
