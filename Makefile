PORT ?= 4004
MPREMOTE = mpremote connect port:rfc2217://localhost:$(PORT)

.PHONY: deploy

dev:
	$(MPREMOTE) fs cp bootstrap.py :main.py
	$(MPREMOTE) fs cp secrets.py :secrets.py
	$(MPREMOTE) mip install github:its-the-vibe/TinyUpdater/updater.py
	$(MPREMOTE) run bootstrap.py

deploy:
	mpremote fs cp secrets.py :secrets.py
	mpremote mip install github:its-the-vibe/TinyUpdater/updater.py
	mpremote run bootstrap.py
