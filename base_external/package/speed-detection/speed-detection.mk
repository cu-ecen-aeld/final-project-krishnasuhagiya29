##############################################################
#
# SPEED DETECTION
#
##############################################################


SPEED_DETECTION_VERSION = 65fdc2c36efc50c12dbbbd53bc5c89f6b754a715
SPEED_DETECTION_SITE = git@github.com:krishnasuhagiya29/final-project-assignment-krishna-suhas.git
SPEED_DETECTION_SITE_METHOD = git
SPEED_DETECTION_GIT_SUBMODULES = YES

# Adding the python script to detect the speed from the sign board
define SPEED_DETECTION_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/speed-detection/speed-limit-detection.py $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/speed-detection/60.png $(TARGET_DIR)/usr/bin
endef

$(eval $(generic-package))