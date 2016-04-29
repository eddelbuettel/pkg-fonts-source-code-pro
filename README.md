## pkg-fonts-source-code-pro

_Unofficial_ [Debian](http://www.debian.org) packaging for Adobe
[Source Code Pro](http://adobe-fonts.github.io/source-code-pro/) fonts

### About

This repository provides a simple way to create a .deb file with OTF files
for [Source Code Pro](http://adobe-fonts.github.io/source-code-pro/).

### Installation

After cloning the repository run

```
dpkg-buildpackage -rfakeroot -us -uc -tc
```

to create a Debian binary using the common _fake_ suid accessor, without
signing changes or control file as we are not uploading anywhere, and
cleaning up. 

### Status

This is a somewhat ad-hoc package for personal use which I am not even
putting onto my [PPA](https://launchpad.net/~edd/+archive/ubuntu/misc).
It takes a shortcut in packaging / building as the actual fonts are
downloaded rather than made from their sources. That is not exactly how
Debian does things; some discussion is at
[this bug report](https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=736681).

### Author

Dirk Eddelbuettel

### License

The packaging is provided under the GPL (version 2 or later).  The underlying
fonts (which are _not included in this repository_) are licensed under the
[SIL Open Font License (v1.1)](http://scripts.sil.org/OFL).
