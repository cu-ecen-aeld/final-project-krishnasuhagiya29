##############################################################
#
# SPEED DETECTION
#
##############################################################


DISPLAY_VERSION = 65fdc2c36efc50c12dbbbd53bc5c89f6b754a715
DISPLAY_SITE = git@github.com:krishnasuhagiya29/final-project-assignment-krishna-suhas.git
DISPLAY_SITE_METHOD = git
DISPLAY_GIT_SUBMODULES = YES

# Adding the python script to detect the speed from the sign board
define DISPLAY_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/speed-detection/speed-limit-detection.py $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/speed-detection/60.png $(TARGET_DIR)/usr/bin
endef

$(eval $(generic-package))