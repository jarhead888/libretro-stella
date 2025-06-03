################################################################################
#
# LIBRETRO_STELLA
#
################################################################################
LIBRETRO_STELLA_DEPENDENCIES = retroarch
LIBRETRO_STELLA_DIR=$(BUILD_DIR)/libretro-stella

$(LIBRETRO_STELLA_DIR)/.source:
	mkdir -pv $(LIBRETRO_STELLA_DIR)
	cp -raf package/libretro-stella/src/* $(LIBRETRO_STELLA_DIR)
	touch $@

$(LIBRETRO_STELLA_DIR)/.configured : $(LIBRETRO_STELLA_DIR)/.source
	touch $@

libretro-stella-binary: $(LIBRETRO_STELLA_DIR)/.configured $(LIBRETRO_STELLA_DEPENDENCIES)
	BASE_DIR="$(BASE_DIR)" CFLAGS="$(TARGET_CFLAGS) -I${STAGING_DIR}/usr/include/ -I$(LIBRETRO_STELLA_DIR)/" CXXFLAGS="$(TARGET_CXXFLAGS) -I${STAGING_DIR}/usr/include/ -I$(LIBRETRO_STELLA_DIR)/ -I$(LIBRETRO_STELLA_DIR)/src/emucore/" LDFLAGS="$(TARGET_LDFLAGS)" CC="$(TARGET_CC)" CXX="$(TARGET_CXX)" $(MAKE) -C $(LIBRETRO_STELLA_DIR)/src/os/libretro/ -f Makefile platform="allwinner_h6"

libretro-stella: libretro-stella-binary
	mkdir -p $(TARGET_DIR)/usr/lib/libretro
	cp -raf $(LIBRETRO_STELLA_DIR)/src/os/libretro/stella_libretro.so $(TARGET_DIR)/usr/lib/libretro/
	$(TARGET_STRIP) $(TARGET_DIR)/usr/lib/libretro/stella_libretro.so

ifeq ($(BR2_PACKAGE_LIBRETRO_STELLA), y)
TARGETS += libretro-stella
endif
