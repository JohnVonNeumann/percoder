```
 ██▓███  ▓█████  ██▀███   ▄████▄   ▒█████  ▓█████▄ ▓█████  ██▀███
▓██░  ██▒▓█   ▀ ▓██ ▒ ██▒▒██▀ ▀█  ▒██▒  ██▒▒██▀ ██▌▓█   ▀ ▓██ ▒ ██▒
▓██░ ██▓▒▒███   ▓██ ░▄█ ▒▒▓█    ▄ ▒██░  ██▒░██   █▌▒███   ▓██ ░▄█ ▒
▒██▄█▓▒ ▒▒▓█  ▄ ▒██▀▀█▄  ▒▓▓▄ ▄██▒▒██   ██░░▓█▄   ▌▒▓█  ▄ ▒██▀▀█▄
▒██▒ ░  ░░▒████▒░██▓ ▒██▒▒ ▓███▀ ░░ ████▓▒░░▒████▓ ░▒████▒░██▓ ▒██▒
▒▓▒░ ░  ░░░ ▒░ ░░ ▒▓ ░▒▓░░ ░▒ ▒  ░░ ▒░▒░▒░  ▒▒▓  ▒ ░░ ▒░ ░░ ▒▓ ░▒▓░
░▒ ░      ░ ░  ░  ░▒ ░ ▒░  ░  ▒     ░ ▒ ▒░  ░ ▒  ▒  ░ ░  ░  ░▒ ░ ▒░
░░          ░     ░░   ░ ░        ░ ░ ░ ▒   ░ ░  ░    ░     ░░   ░
            ░  ░   ░     ░ ░          ░ ░     ░       ░  ░   ░
```

CLI tool to percentage encode and decode url paths and query params.

# Installation

	git clone git@github.com:JohnVonNeumann/percoder.git
	make install

# Usage

	percoder.rb --encode 31337
	$ %33%31%33%33%37
	percoder.rb --url github.com --decode %33%31%33%33%37
	$ github.com/31337

