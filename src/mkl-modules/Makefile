REDHAT.ROOT = $(CURDIR)/../../

-include $(ROCKSROOT)/etc/Rules.mk
include Rules.mk

build:

$(VERSION_INC): $(VERSION_SRC)
	/bin/grep 'VERSION.*=' $(VERSION_SRC) > $@
	
install::
	mkdir -p -m 755 $(ROOT)/$(PKGROOT)
	cp *.module $(ROOT)/$(PKGROOT)/$(VERSION)
	cp *.version $(ROOT)/$(PKGROOT)/.version.$(VERSION)
	perl -pi -e 's#COMPILERNAME#$(COMPILERNAME)#g;' \
	         -e 's#ROLLCOMPILER#$(ROLLCOMPILER)#g;' \
	         -e 's#ROLLMPI#$(ROLLMPI)#g;' \
	         -e 's#ROLLNETWORK#$(ROLLNETWORK)#g;' \
	         -e 's#ROLLPY#$(ROLLPY)#g;' \
	         -e 's#VERSION#$(VERSION)#g;' \
	  $(ROOT)/$(PKGROOT)/.version.$(VERSION) $(ROOT)/$(PKGROOT)/$(VERSION)
	ln -s $(PKGROOT)/.version.$(VERSION) $(ROOT)/$(PKGROOT)/.version
	# Additional replacement required for the MKL modulefile
	perl -pi -e 's/INTELVERS/$(INTELVERS)/g' $(ROOT)/$(PKGROOT)/$(VERSION)

clean::
	rm -f $(VERSION_INC)
