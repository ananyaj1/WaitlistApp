# This is the BUILD target, do not remove it, and do not modify it's name
expressjs-build:
	yarn install
.PHONY: expressjs-build

# This is the RUN target, do not remove it, and do not modify it's name
expressjs-run:
	yarn start 2>&1 | tee $$LOG_TO /dev/stdout &
.PHONY: expressjs-run

# This is the STOP target, do not remove it, and do not modify it's name
expressjs-stop:
	kill `ps auxf | grep 'yarn start' | grep -v grep | awk '{print $$2}'` 2>/dev/null || true
.PHONY: expressjs-stop

# This is the RESTART target, do not remove it, and do not modify it's name
expressjs-restart: expressjs-stop expressjs-run
.PHONY: expressjs-restart
