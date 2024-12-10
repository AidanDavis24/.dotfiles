.PHONY: linux clean

linux: clean
	./bin/linux.sh
clean:
	./bin/cleanup.sh

