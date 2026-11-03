PORT ?= 4004
MPREMOTE = mpremote connect port:rfc2217://localhost:$(PORT)

.PHONY: dev

dev:
	$(MPREMOTE) fs cp main.py :main.py
	$(MPREMOTE) mip install github:its-the-vibe/TinyUpdater/updater.py
	$(MPREMOTE) run main.py