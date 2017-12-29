# macOS-home-call-drop
Simple shell script to fix macOS privacy issues and remove mostly useless macOS calls to cupertino. By default it disable useless services, daemons running in background - If you don't use Push Notifications, Spotlight Suggestions or do not like to send your browsing history, bookmarks and more to apple you should run it then. Script does not affect iCloud and FindMyMac so if you don't use iCloud you should disable services related to iCloud as well, just edit <b>homecall.sh</b> Most services has been described out there, uncomment to let script disable it!

Script as well disable Spotlight suggestions in system and as well in Safari, by default each keystorke is being sent out to apple, even when you search for your local files, pretty cool huh ? So let's better move to usage now

## Usage
MacOS High sierra reuqire to have sip diasbled.
<pre>
bash homecall.sh fixmacos
</pre>

Optionally you can restore it back to default by
<pre>
bash homecall.sh restore
</pre>

## Contribution
If you find something interesting to add to script, feel free to fork and pull request. Any update can bring something that aware macOS user would like to disable.

## Notice
Be careful with modifying and using this script if you are not aware about what it exactly does, and what each deamon/agent do, since you can break you system very easily and make it non bootable. Script has been tested with macOS sierra but i belive it will work just fine with previous versions, it just may return some warnings due fact that some services has been added recently but it can be safely ignored.
