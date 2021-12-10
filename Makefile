all:
	./build

dev: 
	./daemon & httpwatcher --root ./dist/ --port 8000 --no-browser; fg