# Firejail profile for hedgewars
# This file is overwritten after every install/update
# Persistent local customizations
include /etc/firejail/hedgewars.local
# Persistent global definitions
include /etc/firejail/globals.local

noblacklist ${HOME}/.hedgewars

include /etc/firejail/disable-common.inc
include /etc/firejail/disable-devel.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-programs.inc

mkdir     ~/.hedgewars
whitelist ~/.hedgewars
include /etc/firejail/whitelist-common.inc

caps.drop all
netfilter
nogroups
nonewprivs
noroot
seccomp
tracelog

disable-mnt
private-dev
private-tmp
notv
