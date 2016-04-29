
## Minimal and hackish packaging for Source Code Pro
##
## This Makefile downloads from GitHub, extracts the OTF files and
## lets the Debian packaging in debian/ do the rest. Just call
##
##     dpkg-buildpackage -rfakeroot -us -uc -tc
##
## or just
##
##     runMe.sh
##
## to have the package build using 'fake' suid, do not sign (as we're
## not uploading anywhere) and clean.
##
## Copyright (C) 2016  Dirk Eddelbuettel
## and released under GPL (>=2 )


## check with https://github.com/adobe-fonts/source-code-pro/releases for version
srcfile=https://github.com/adobe-fonts/source-code-pro/archive/2.010R-ro/1.030R-it.tar.gz
outfile=$(shell basename ${srcfile})

all:
	test -f ${outfile} || wget ${srcfile} 
	tar xfz ${outfile}
	mv source-code-pro-*/OTF/ .
	rm -rf source-code-pro-* 

clean:
	rm -f ${outfile}
	rm -rf OTF/
