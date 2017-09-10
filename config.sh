##########################################################################################
# 
# Magisk
# by topjohnwu
# 
# This is a Magisk Xposed Module Uninstaller ZIP
# By Dark1
# Profile :
# http://forum.xda-developers.com/member.php?u=7292542
# https://github.com/dark-1
# 
##########################################################################################
  
##########################################################################################
# Defines
##########################################################################################
  
MODID=xposed
  
##########################################################################################
# UnInstallation Message
##########################################################################################
  
print_modname()
{
  ui_print "*******************************"
  ui_print "   Magisk Xposed Uninstaller   "
  ui_print "*******************************"
}
  
##########################################################################################
# UnInstallation Extra Function
##########################################################################################
  
# Will be Executed Before UnInstallation
script_before_uninstall() 
{
  # SDK [API] of Device
  [ ! -f /system/build.prop ] && abort "! /system/build.prop could not be Found!"
  api_level_arch_detect
  ui_print "- Detected SDK is $API !"
  ORGMODID=$MODID
  MODID=${ORGMODID}_${API}
  MODPATH=$MOUNTPATH/$MODID
  ui_print "- Hence New MOD Name [MODID] is $MODID !"
  CFOLD=false
}
  
# Will be Executed After UnInstallation
script_after_uninstall() 
{
  # By any chance if there are more Xposed MOD then to be on safer side
  
  # If at "xposed"
  config_xposed_uninstall ${ORGMODID} && CFOLD=true
  
  # If at "xposed_helper"
  config_xposed_uninstall ${ORGMODID}_helper && CFOLD=true
  
  # Other Files If above Older Version's OR Helper Found
  if $CFOLD; then
    ui_print "- Removed Other OLD Files !"
    rm -f /magisk/post-fs-data.d/mount_xposed 2>/dev/null
    rm -f /magisk/service.d/z_unmount_xposed 2>/dev/null
    rm -f /magisk/.core/post-fs-data.d/mount_xposed 2>/dev/null
    rm -f /magisk/.core/service.d/z_unmount_xposed 2>/dev/null
  fi
  
  # Goes from SDK 21 to 25
  for SDKN in $(seq 21 25); do
    config_xposed_uninstall ${ORGMODID}_${SDKN}
  done
}

config_xposed_uninstall()
{
  local TEMPMODPATH="${MOUNTPATH}/$1"
  if [ -d $TEMPMODPATH ]; then
    ui_print "!! Detected An-Other at \"$1\" !"
    rm -rf $TEMPMODPATH 2>/dev/null
    ui_print "- Removed Magisk Module : \"$1\" !"
    return 0
  else
    return 1
  fi
}
