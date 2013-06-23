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

