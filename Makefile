
TESTHOST?=test.sub.$(TESTDOMAIN)


.PHONY: lint test livetest


lint:
	pylint setup.py certbot_dns_loopia.py tests/

test:
	pytest 

livetest:
	./scripts/test.sh $(TESTHOST)
