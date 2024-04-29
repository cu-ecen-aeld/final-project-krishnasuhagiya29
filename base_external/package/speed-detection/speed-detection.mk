##############################################################
#
# SPEED DETECTION
#
##############################################################


SPEED_DETECTION_VERSION = 88bb1752f84d46d0cb50893ed0f1c60c53b00bd4
SPEED_DETECTION_SITE = git@github.com:krishnasuhagiya29/final-project-assignment-krishna-suhas.git
SPEED_DETECTION_SITE_METHOD = git
SPEED_DETECTION_GIT_SUBMODULES = YES

define SPEED_DETECTION_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/server all
endef

# Adding the python script to detect the speed from the sign board
define SPEED_DETECTION_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/server/speed-detect.py $(TARGET_DIR)/
	$(INSTALL) -m 0755 $(@D)/server/test.sh $(TARGET_DIR)/
	$(INSTALL) -m 0755 $(@D)/server/server $(TARGET_DIR)/
	$(INSTALL) -m 0755 $(@D)/server/board_10.png $(TARGET_DIR)/
	$(INSTALL) -m 0755 $(@D)/server/board_55.png $(TARGET_DIR)/
	$(INSTALL) -m 0755 $(@D)/server/board_60.png $(TARGET_DIR)/
	$(INSTALL) -m 0755 $(@D)/server/board_80.png $(TARGET_DIR)/
endef

$(eval $(generic-package))