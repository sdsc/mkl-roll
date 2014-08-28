NAME       = mkl
VERSION    = 11.1.2.144
RELEASE    = 0
RPM.EXTRAS = AutoReq:No

SRC_SUBDIR = mkl

SUFFIX     = tar.gz

SRC_NAME = l_mkl
SOURCE   = $(SRC_NAME)_$(VERSION)

TAR_GZ_PKGS = $(SOURCE).$(SUFFIX)
