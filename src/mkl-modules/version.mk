NAME        = mkl-modules
VERSION     = 11.1.2.144
RELEASE     = 2
PKGROOT     = /opt/modulefiles/applications/mkl

INTELVERS   = 2013_sp1.2.144

VERSION_SRC = $(REDHAT.ROOT)/src/mkl/version.mk
VERSION_INC = version.inc
include $(VERSION_INC)

RPM.EXTRAS  = AutoReq:No
