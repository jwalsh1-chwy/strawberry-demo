deps:
	brew install asdf | true
	asdf plugin-add python | true
	asdf install python 3.7.9 || true
	asdf global python 3.7.9 | true
	pip install --upgrade pip | true
	poetry install | true

run:
	${MAKE} -C strawberry_demo run
