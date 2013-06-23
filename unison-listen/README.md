unison-listen
=============
So far there is one tool. It listens to the changes you make to your directories, invokes unison for propagating these changes and then notifies you.

unison-listen-start <profilename>: Keeps your unison profile up to date by listening to your changes
unison-listen-stop <profilename>: Stops listening on that profile
unison-listen-startall: Listen on all profiles
unison-listen-stopall: Stop listening for all running profiles
unison-listen-status: List status of each profile
unison-inotify-process <profilename>: (Takes stdin from unison-inotify-signal and instructs unison to synchronize)
unison-inotify-signal <directory> <lockfile>: (Calls inotifywait with correct output format)
unison-syncall: Synchronizes all your unison profiles once (not related to the other tools)
unison-wakeall: Executes ls on each of your local unison roots to trigger updating of otherwise not updated profiles.

Installation:
1. Put all tools into a directory. make sure it is in $PATH whenever you use it.
2. Install dependencies like unison, inotify-tools and libgtk2-notify-perl (Debian Names).
3. Create your unison profiles using unison.
4. Add a line to cron which invokes unison-inotify-all on @reboot (Make sure to extend $PATH somehow).

