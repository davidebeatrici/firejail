# Firejail profile for viking
# This file is overwritten after every install/update
# Persistent local customizations
include /etc/firejail/viking.local
# Persistent global definitions
include /etc/firejail/globals.local

noblacklist ${HOME}/.viking
noblacklist ${HOME}/.viking-maps

include /etc/firejail/disable-common.inc
include /etc/firejail/disable-devel.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-programs.inc

caps.drop all
netfilter
no3d
nogroups
nonewprivs
noroot
nosound
protocol unix,inet,inet6
seccomp
shell none

private-dev
private-tmp

noexec ${HOME}
noexec /tmp
notv
