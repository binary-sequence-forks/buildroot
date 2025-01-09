C3270_VERSION = ncursesw
C3270_SITE = https://github.com/binary-sequence/x3270.git
C3270_SITE_METHOD = git
C3270_DEPENDENCIES = ncurses openssl readline

define C3270_CONFIGURE_CMDS
	cd $(@D) && ./configure --enable-c3270
endef

define C3270_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D) c3270
endef

define C3270_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(@D)/c3270 $(TARGET_DIR)/usr/bin/c3270
endef

$(eval $(generic-package))
