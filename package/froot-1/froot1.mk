FROOT_1_VERSION = v1.0.0-0
FROOT_1_SITE = https://github.com/binary-sequence-forks/froot-1.git
FROOT_1_SITE_METHOD = git

define FROOT_1_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)
endef

define FROOT_1_INSTALL_TARGET_CMDS
	$(MAKE) install -C $(@D) prefix=$(TARGET_DIR)/usr
endef

$(eval $(generic-package))
