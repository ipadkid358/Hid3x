ARCHS = armv7
DEBUG = 0

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = Hid3x
Hid3x_FILES = Tweak.xm
Hid3x_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
