SHELL := /bin/bash -c

say-hello:
	@echo "Hello UD"

test-code:
	pytest -v demo_app/

format-code:
	black demo_app/

lint-code:
	find demo_app -name "*.py" | xargs pylint

pre-commit:
	pre-commit run --all-files

generate-requirements:
	poetry export requirements.txt --output requirements.txt