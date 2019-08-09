  ui_print " "
  ui_print " Is your device running an arm64 AOSP based Pie ROM? "
  ui_print " Vol Up = Yes, Vol Down = No "
  if $VKSEL; then
     ui_print " Welcome To Omni-ify Unity Installer "
  else
     ui_print " "
     ui_print " Exiting The Installer "
     abort
 fi

ui_print " "
ui_print "****************************************"
ui_print " -Omni Bootanimation- "
ui_print "****************************************"
ui_print " Do you want to install Omni bootanimation? "
ui_print " (It may or may not work on your device ) "
ui_print " Vol Up = Yes, Vol Down = No "
if $VKSEL; then
  ui_print " "
  ui_print " Changing Your Bootanimation "
else
  ui_print " "
  ui_print " Your Bootanimation Won't Be Changed "
  rm -rf $TMPDIR/system/media/bootanimation.zip
fi

ui_print " "
ui_print "****************************************"
ui_print " -Omni Audio Files- "
ui_print "****************************************"
ui_print " Do you want to install Omni ROM ringtones, notification sounds, alarm sounds and ui sounds? "
ui_print " Vol Up = Yes, Vol Down = No "
if $VKSEL; then
  ui_print " "
  ui_print " Changing Your Audio Files "
  prop_process $TMPDIR/common/propsoss.prop
else
  ui_print " Your Audio Files Will Remain Untouched "
  rm -rf $TMPDIR/system/media/audio
fi

ui_print " "
ui_print "*****************************************"
ui_print " -Omni Month Calendar Widget- "
ui_print "*****************************************"
ui_print " Do you want to install Omni Month Calendar Widget? "
ui_print " Vol Up = Yes, Vol Down = No "
if $VKSEL; then
  ui_print " "
  ui_print " Installing Omni Month Calendar Widget "
else
  ui_print " Removing Omni Month Calendar Widget "
  rm -rf $TMPDIR/system/app/MonthCalendarWidget
fi

ui_print " "
ui_print "*****************************************"
ui_print " -Omni Clock OSS- "
ui_print "*****************************************"
ui_print " Do you want to install Omni Clock? "
ui_print " Vol Up = Yes, Vol Down = No "
if $VKSEL; then
  ui_print " "
  ui_print " Installing Omni Clock "
  ui_print " Grant All Permissions To Omni Clock Through Settings Yourself Else It Will Crash "
else
  ui_print " Omni Clock Won't Be Installed... Manage Your Time Yourself... "
  rm -rf $TMPDIR/system/app/OmniClockOSS
  rm -rf $TMPDIR/system/etc/permissions/omni-power-whitelist.xml
fi

ui_print " "
ui_print "*****************************************"
ui_print " -Omni Matlog- "
ui_print "*****************************************"
ui_print " Do you want to install Omni Matlog with rootless logcat reading? "
ui_print " Vol Up = Yes, Vol Down = No "
if $VKSEL; then
  ui_print " "
  ui_print " Installing Omni Matlog "
else
  ui_print " Omni Matlog Will Be Disabled "
  rm -rf $TMPDIR/system/priv-app/MatLog
  rm -rf $TMPDIR/system/etc/permissions/privapp-permissions-omni-log.xml
fi


ui_print " "
ui_print "******************************************"
ui_print " -Omni Switch- "
ui_print "******************************************"
ui_print " Do you want to install Omni Switch ? "
ui_print " Vol Up = Yes, Vol Down = No "
if $VKSEL; then
  ui_print " "
  ui_print " Omni Switch Will Be Installed "
else
  ui_print " Omni Switch Has Been Disabled "
  rm -rf $TMPDIR/system/priv-app/OmniSwitch
  rm -rf $TMPDIR/system/etc/permissions/privapp-permissions-omni.xml
fi
