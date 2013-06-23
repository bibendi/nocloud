VERSION=0.1.1
PREFIX=/usr/bin

build:
install: build
	mkdir -p $(DESTDIR)$(PREFIX)
	install unison-inotify-process $(DESTDIR)$(PREFIX)/unison-inotify-process
	install unison-inotify-signal $(DESTDIR)$(PREFIX)/unison-listen-start
	install unison-listen-start $(DESTDIR)$(PREFIX)/unison-listen-start
	install unison-listen-startall $(DESTDIR)$(PREFIX)/unison-listen-startall
	install unison-listen-status $(DESTDIR)$(PREFIX)/unison-listen-status
	install unison-listen-stop $(DESTDIR)$(PREFIX)/unison-listen-stop
	install unison-listen-stopall $(DESTDIR)$(PREFIX)/unison-listen-stop
	install unison-syncall $(DESTDIR)$(PREFIX)/unison-syncall
	install unison-wakeall $(DESTDIR)$(PREFIX)/unison-wakeall
tar:
	mkdir unison-listen-$(VERSION)
	cp README Makefile unison-inotify-process unison-inotify-signal unison-listen-start unison-listen-startall unison-listen-status unison-listen-stop unison-listen-stopall unison-syncall unison-wakeall unison-listen-$(VERSION)
	tar -czf unison-listen_$(VERSION).orig.tar.gz unison-listen-$(VERSION)
clean:
	rm -rf unison-listen-$(VERSION)
	rm -f unison-listen_$(VERSION).orig.tar.gz
uninstall:
	rm $(DESTDIR)$(PREFIX)/unison-inotify-process
	rm $(DESTDIR)$(PREFIX)/unison-listen-start
	rm $(DESTDIR)$(PREFIX)/unison-listen-start
	rm $(DESTDIR)$(PREFIX)/unison-listen-startall
	rm $(DESTDIR)$(PREFIX)/unison-listen-status
	rm $(DESTDIR)$(PREFIX)/unison-listen-stop
	rm $(DESTDIR)$(PREFIX)/unison-listen-stop
	rm $(DESTDIR)$(PREFIX)/unison-syncall
	rm $(DESTDIR)$(PREFIX)/unison-wakeall
