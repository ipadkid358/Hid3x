include $(THEOS)/makefiles/common.mk

TWEAK_NAME = Hid3x
Hid3x_FILES = Tweak.x
Hid3x_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
