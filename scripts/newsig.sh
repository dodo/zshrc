#!/bin/sh
#inspired by: http://www.guckes.net/Setup/zshrc.mine
KEYID=0x9E949439
gpg --refresh-keys $KEYID 2>/dev/null
gpg --recv-keys `gpg --list-sigs $KEYID|grep "not found"|cut -b 9-17`
gpg --list-sigs $KEYID | sed 's/^......................//' | sort -n | tail $@

