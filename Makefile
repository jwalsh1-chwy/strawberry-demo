deps:
	brew install asdf tfenv || true
	asdf plugin-add python || true
	asdf install python 3.7.9 || true
	asdf global python 3.7.9 || true
	pip install --upgrade pip || true
	poetry install || true

run:
	${MAKE} -C strawberry_demo run

localstack:
	LAMBDA_REMOTE_DOCKER=0 \
    LAMBDA_DOCKER_FLAGS='-p 19891:19891' \
    DEBUG=1 poetry run localstack start
