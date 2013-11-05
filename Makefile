PORT=32335

server:
	cd .. && python -m SimpleHTTPServer $(PORT) &
kill:
	kill -9 `lsof -t -i:$(PORT)`
browser:
	python -m webbrowser -t "http://127.0.0.1:$(PORT)/git-internals-d3/"


all: serve
