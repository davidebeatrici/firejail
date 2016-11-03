# zathura document viewer profile
noblacklist ~/.config/zathura
noblacklist ~/.local/share/zathura
include /etc/firejail/disable-common.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-devel.inc
include /etc/firejail/disable-passwdmgr.inc

caps.drop all
seccomp
protocol unix
netfilter
nonewprivs
noroot
nogroups
nosound
shell none

private-bin zathura
private-dev
private-etc fonts
whitelist /tmp/.X11-unix

read-only ~/
read-write ~/.local/share/zathura/
