all: mor
mor:
	cp main.rb mor
	chmod +x mor
install: mor
	cp mor /usr/local/bin
uninstall: mor
	rm /usr/local/bin/mor