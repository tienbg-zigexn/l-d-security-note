#!/bin/sh
# Oracle is really bad.
# https://wiki.archlinux.org/title/Java#Gray_window,_applications_not_resizing_with_WM,_menus_immediately_closing
#
# This is a workaround.


export _JAVA_AWT_WM_NONREPARENTING=1

exec java -jar ./ZAP_2.16.1/zap-2.16.1.jar
