PACKAGE     = mkl
CATEGORY    = applications

NAME        = $(PACKAGE)-modules
RELEASE     = 3
PKGROOT     = /opt/modulefiles/$(CATEGORY)/$(PACKAGE)

VERSION_SRC = $(REDHAT.ROOT)/src/$(PACKAGE)/version.mk
VERSION_INC = version.inc
include $(VERSION_INC)

INTELVERS   = 2015.0.090

RPM.EXTRAS  = AutoReq:No
