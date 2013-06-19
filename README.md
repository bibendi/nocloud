nocloud
=======

A collection of tools which together are not a cloud, but provide similar functionality.
The idea is to combine existing tools and lift their functionality slightly
with some scripts ending up with all the functionality typically provided by a cloud (hopefully).
The focus is also on reliability, performance, modifiability.
The target audience is proficient users of Linux.

There is no focus on usability (at least not yet).
There is also no focus on providing one tool which binds all other tools together to one power tool and this will never be the case.

Principles:
- Build on giant shoulders (Use existing tools and protocols: rsync, ssh, unison, rdiff-backup, sftp).
- Small tools doing one job.
- Try to base everything on SSH and public key authentication, but don't restrict it to.

So far there is one tool. It listens to the changes you make to your directories, invokes unison for propagating these changes and then notifies you.

unison-inotify <profilename>: Keeps your unison profile up to date by listening to your changes
unison-inotify-all: Executes unison-inotify an all your profiles
unison-inotify-process <profilename>: (Takes stdin from unison-inotify-signal and sends
unison-inotify-signal <directory>: (Calls inotifywait with correct output format)
unison-syncall: Synchronizes all your unison profiles once (not related to the other tools)a
unison-wakeall: Executes ls on each of your local unison roots to trigger updating of otherwise starving profiles.

Installation:
1. Put all tools into a directory. make sure it is in $PATH whenever you use it.
2. Install dependencies like unison, inotify-tools and libgtk2-notify-perl (Debian Names).
3. Create your unison profiles using unison.
4. Add a line to cron which invokes unison-inotify-all on @reboot (Make sure to extend $PATH somehow).

