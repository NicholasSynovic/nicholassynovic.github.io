build:
	hugo build \
		--source nsynovic \
		--destination ../html \

create-dev:
	pre-commit install
	pre-commit autoupdate
