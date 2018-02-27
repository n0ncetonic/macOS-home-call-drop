#!/bin/bash

DAEMONS=()
#DAEMONS+=('com.apple.AirPlayXPCHelper') #Airplay daemon
#DAEMONS+=('com.apple.AOSNotificationOSX') #Notifications
DAEMONS+=('com.apple.appleseed.fbahelperd') #Related to feedback
#DAEMONS+=('com.apple.apsd') #Apple Push Notification Service (apsd) - it's calling home quite often + used by Facetime and Messages
DAEMONS+=('com.apple.awacsd') #Apple Wide Area Connectivity Service daemon - Back to My Mac Feature
DAEMONS+=('com.apple.awdd') #Sending out diagnostics & usage
DAEMONS+=('com.apple.CrashReporterSupportHelper') #Crash reporter
#DAEMONS+=('com.apple.eapolcfg_auth') #perform privileged operations required by certain EAPOLClientConfiguration.h APIs
DAEMONS+=('com.apple.familycontrols') #Parent control
#DAEMONS+=('com.apple.FileSyncAgent.sshd') #Mostlikely sshd on this machine
#DAEMONS+=('com.apple.findmymac') #Find my mac daemon
#DAEMONS+=('com.apple.findmymacmessenger') #Related to find my mac daemon, propably act on commands sent through FindMyDevice in iCloud
#DAEMONS+=('com.apple.icloud.findmydeviced') #Related to find my mac
#DAEMONS+=('com.apple.iCloudStats') #Related to iCloud
#DAEMONS+=('com.apple.laterscheduler') #Schedule something?
#DAEMONS+=('com.apple.locationd') #Propably reading current location
#DAEMONS+=('com.apple.ManagedClient.cloudconfigurationd') #Related to manage current macOS user iCloud
#DAEMONS+=('com.apple.ManagedClient.enroll') #Related to manage current macOS user
#DAEMONS+=('com.apple.ManagedClient.startup') #Related to manage current macOS user
#DAEMONS+=('com.apple.ManagedClient') #Related to manage current macOS user
#DAEMONS+=('com.apple.mbicloudsetupd') #iCloud Settings
#DAEMONS+=('com.apple.netbiosd') #Netbiosd is microsoft's networking service. used to share files between mac and windows
#DAEMONS+=('com.apple.preferences.timezone.admintool') #Time setting daemon
#DAEMONS+=('com.apple.preferences.timezone.auto') #Time setting daemon
#DAEMONS+=('com.apple.remotepairtool') #Pairing devices remotely
#DAEMONS+=('com.apple.rpmuxd') #daemon for remote debugging of mobile devices.
DAEMONS+=('com.apple.screensharing') #Screensharing daemon
#DAEMONS+=('com.apple.security.FDERecoveryAgent') #Full Disk Ecnryption - Related to File Vault https://developer.apple.com/legacy/library/documentation/Darwin/Reference/ManPages/man8/FDERecoveryAgent.8.html
DAEMONS+=('com.apple.SubmitDiagInfo') #Feedback - most likely it submits your computer data when click 'About this mac'
#DAEMONS+=('com.apple.trustd') #Propably related to certificates

AGENTS=()
#AGENTS+=('com.apple.AirPlayUIAgent') #Related Airport
#AGENTS+=('com.apple.AirPortBaseStationAgent') #Related Airport
#AGENTS+=('com.apple.AOSPushRelay') # Related to iCloud https://github.com/fix-macosx/yosemite-phone-home/blob/master/icloud-user-r0/System/Library/PrivateFrameworks/AOSKit.framework/Versions/A/Helpers/AOSPushRelay.app/Contents/MacOS/AOSPushRelay/20141019T072634Z-auser-%5B172.16.174.146%5D:49560-%5B17.110.240.83%5D:443.log
AGENTS+=('com.apple.appleseed.seedusaged') #Feedback assistant
AGENTS+=('com.apple.assistant_service') #Siri
#AGENTS+=('com.apple.assistant') #Keychain
#AGENTS+=('com.apple.bird') #Part of iCloud
#AGENTS+=('com.apple.CalendarAgent') #Calendar events related to iCloud
#AGENTS+=('com.apple.CallHistoryPluginHelper') #Related to call history (iCloud)
#AGENTS+=('com.apple.CallHistorySyncHelper') #Related to call history syncing (iCloud)
#AGENTS+=('com.apple.cloudd') #Related to sync data to iCloud, most likely used by iMessage,Mail,iCloud drive, etc...
AGENTS+=('com.apple.cloudfamilyrestrictionsd-mac') #iCloud Family restrictions
#AGENTS+=('com.apple.cloudpaird') #Related to iCloud
AGENTS+=('com.apple.cloudphotosd') #Propably syncing your photos to icloud
AGENTS+=('com.apple.DictationIM') #Dictation
#AGENTS+=('com.apple.familycircled') #Family notifications, like reminders
#AGENTS+=('com.apple.familycontrols.useragent') #Family notifications, like reminders
#AGENTS+=('com.apple.familynotificationd') #Family notifications, like reminders
AGENTS+=('com.apple.gamed') #GameCenter
#AGENTS+=('com.apple.geodMachServiceBridge') #Located in GeoServices.framework, related to locations maybe used for maps, maybe as well for things like find my mac, or just syping
#AGENTS+=('com.apple.icloud.findmydeviced.findmydevice-user-agent') #Find my device ?
#AGENTS+=('com.apple.icloud.fmfd') #Find my device ?
#AGENTS+=('com.apple.iCloudUserNotifications') #iCloud notifications, like reminders
#AGENTS+=('com.apple.identityservicesd') #Used to auth some apps, as well used by iCloud
#AGENTS+=('com.apple.imagent') #Facetime & Messages
#AGENTS+=('com.apple.IMLoggingAgent') #IMFoundation.framework - Not sure about this one, maybe used to log in to computer on start
AGENTS+=('com.apple.parentalcontrols.check') #Related to parental control
AGENTS+=('com.apple.parsecd') #Used by spotlight and/or siri, propably some suggestions - CoreParsec.framework
#AGENTS+=('com.apple.photoanalysisd') #Apple AI to analyse photos stored in Photos.app, most likely to match faces and scenery but it happens to make requests to Apple during process, i have not checked what are those requestes i have just blocked it with Little Snitch
AGENTS+=('com.apple.rtcreportingd') #Related to Home Sharing, most likely it checks if device is auth for home sharing + Facetime
AGENTS+=('com.apple.SafariCloudHistoryPushAgent') #Good one, sending out your browsing history... :)
AGENTS+=('com.apple.safaridavclient') #Sending bookmarks to iCloud, even if you disable it may send your bookmarks to Apple
AGENTS+=('com.apple.SafariNotificationAgent') #Notifications in Safari
#AGENTS+=('com.apple.security.cloudkeychainproxy3') #Propably related to syncing keychain to icloud
#AGENTS+=('com.apple.security.idskeychainsyncingproxy') #Most likely also related to keychain - IDSKeychainSyncingProxy.bundle
#AGENTS+=('com.apple.security.keychain-circle-notification') #Related to keychain
#AGENTS+=('com.apple.sharingd') #Airdrop, Remote Disks, Shared Directories, Handoff
#AGENTS+=('com.apple.syncdefaultsd') ##Propably related to syncing keychain
#AGENTS+=('com.apple.telephonyutilities.callservicesd') #Handling phone and facetime calls


if /usr/bin/groups | /usr/bin/grep -w admin
then
  ADMIN=true
else
  ADMIN=false
  echo "WARNING: Some commands may not work. Run again with admin privilege."
fi


check(){
  if csrutil status | grep -q 'enabled'
  then
    echo "SIP is enabled. It may not fully work."
    if sw_vers -productVersion | grep -q '10.13'
    then #high sierra
      echo "High Sierra (10.13.X) requires to have SIP DISABLED"
      echo "Boot into recovery mode and type csrutil disable. It's nice to enable it afterwards."
      exit 1
    fi
  fi
}


help_msg(){
  echo ""
  echo "macOS home call dropper by karek314"
  echo "version 1.0"
  echo ""
  echo "Available commands"
  echo "audit - print current settings"
  echo "fixmacos - fix your macOS to stop/limit invasions of your privacy"
  echo "restore - restore to default settings"
  echo "help - help message"
}


fix_spotlight_a(){
  #Global System Preferences
  TMP1="$(
    plutil -convert xml1 -o - "$HOME"/Library/Preferences/com.apple.Spotlight.plist | \
      sed '
           1,/<key>orderedItems<\/key>/d;
           /<key>showedFTE<\/key>/,$d;
           s/'"$(printf '\t\t\t')"'//g;
    ' | \
      awk '/^</{printf$1}/^\t/{print$1}'
  )"
  #echo "Current Settings"
  #echo $TMP1
  TMP2="$(
    echo "$TMP1" | \
      sed '
           s|\(.*\)<true/>\(.*MENU_SPOTLIGHT_SUGGESTIONS.*\)|\1<false/>\2|;
           s|\(.*\)<true/>\(.*MENU_DEFINITION.*\)|\1<false/>\2|;
           s|\(.*\)<true/>\(.*MENU_CONVERSION.*\)|\1<false/>\2|;
    '
  )"
  #echo "New Settings"
  #echo $TMP2
  defaults delete com.apple.Spotlight.plist orderedItems
  defaults write com.apple.Spotlight.plist orderedItems "$TMP2"
}


fix_spotlight_b(){
  #Global System Preferences
  TMP1b="$(
    defaults read com.apple.Spotlight.plist orderedItems | \
      awk '/^ {8}/{printf$0}!/^ {8}/{print}'
  )"
  #echo "Current Settings"
  #echo $TMP1b
  TMP2b="$(
    echo "$TMP1b" | \
      sed '
         s|\(.*\)= 1\(.*MENU_SPOTLIGHT_SUGGESTIONS.*\)|\1= 0\2|;
         s|\(.*\)= 1\(.*MENU_DEFINITION.*\)|\1= 0\2|;
         s|\(.*\)= 1\(.*MENU_CONVERSION.*\)|\1= 0\2|;
    '
  )"
  #echo "New Settings"
  #echo $TMP2b
  defaults delete com.apple.Spotlight.plist orderedItems
  defaults write com.apple.Spotlight.plist orderedItems "$TMP2b"
}


audit_spotlight(){
  echo "Spotlight settings:"
  defaults read com.apple.Spotlight.plist orderedItems | \
    awk '/^ {8}/{printf$0}!/^ {8}/{print}' | \
    grep -E 'MENU_SPOTLIGHT_SUGGESTIONS|MENU_DEFINITION|MENU_CONVERSION'
}


audit_safari(){
  # Read Safari Preferences
  echo "Safari settings:"
  for x in UniversalSearchEnabled SuppressSearchSuggestions WebsiteSpecificSearchEnabled
  do
    echo -n "$x: "
    defaults read com.apple.Safari.plist "$x"
  done
}


fix_safari(){
  # Write Safari Preferences
  defaults write com.apple.Safari.plist UniversalSearchEnabled -bool NO
  defaults write com.apple.Safari.plist SuppressSearchSuggestions -bool YES
  defaults write com.apple.Safari.plist WebsiteSpecificSearchEnabled -bool NO
}


LaunchAgents(){
  if [ -f "/System/Library/LaunchAgents/${2}.plist" ]
  then
    if $ADMIN
    then
      sudo launchctl "$1" -w "/System/Library/LaunchAgents/${2}.plist"
    fi
    launchctl "$1" -w "/System/Library/LaunchAgents/${2}.plist"
    echo "Agent ${agent} ${1}ed"
  else
    echo "$2 is not a System LaunchAgent"
  fi
}


LaunchDaemons(){
  if [ -f "/System/Library/LaunchDaemons/${2}.plist" ]
  then
    if $ADMIN
    then
      sudo launchctl "$1" -w "/System/Library/LaunchDaemons/${2}.plist"
    fi
    launchctl "$1" -w "/System/Library/LaunchDaemons/${2}.plist"
    echo "Daemon ${daemon} disabled"
  else
    echo "$2 is not a System LaunchDaemon"
  fi
}


start(){
  echo ""
  fix_spotlight_b
  fix_safari
  echo "System Spotlight & Suggestions Fixed"
  echo ""
  for agent in "${AGENTS[@]}"
  do
    LaunchAgents unload "${agent}"
  done
  echo ""
  echo "Specified agents have been disabled"
  echo ""
  for daemon in "${DAEMONS[@]}"
  do
    LaunchDaemons unload "$daemon"
  done
  echo ""
  echo "Specified daemons have been disabled"
  echo ""
  echo "Spotlight and safari suggestions have been fixed, and your keystrokes are no longer sent out to apple!"
  echo ""
  echo "!!!RESTART YOUR COMPUTER NOW TO APPLY CHANGES!!!"
  echo ""
}


restore(){
  for agent in "${AGENTS[@]}"
  do
    LaunchAgents load "${agent}"
  done
  echo ""
  echo "Specified agents have been enabled"
  echo ""
  for daemon in "${DAEMONS[@]}"
  do
    LaunchDaemons load "$daemon"
  done
  echo ""
  echo "Specified daemons have been enabled"
  echo ""
  echo "RESTART YOUR COMPUTER NOW TO APPLY CHANGES"
  echo ""
}


audit_launchctl(){
  echo "Searching for LaunchAgents:"
  launchctl list | while read -r line
  do
    for agent in "${AGENTS[@]}"
    do
      case "$line" in
        *"$agent") echo "Found LaunchAgent $line"
          ;;
      esac
    done
  done

  echo "Searching for LaunchDaemons:"
  launchctl list | while read -r line
  do
    for daemon in "${DAEMONS[@]}"
    do
      case "$line" in
        *"$daemon") echo "Found LaunchDaemon $line"
          ;;
      esac
    done
  done
}


case $1 in
  "audit")
    audit_safari
    audit_spotlight
    audit_launchctl
    ;;
  "fixmacos")
    check
    start
    ;;
  "help")
    help_msg
    ;;
  "restore")
    check
    restore
    ;;
  *)
    help_msg
    ;;
esac

#EOF
