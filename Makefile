install:
	pyver = false
	if python3 --version | grep -qE "^3\.8"; then
		pyver = true
	fi
	
	@[ "${pyver}" = true ] || ( echo ">> Python version should be >= 3.8"; exit 1 )
	
	@echo "Install poetry ..."
	curl -sSL https://install.python-poetry.org | python3 -
	
	@echo "Install cookiecutter ..."
	pip install cookiecutter
	
	@echo "Install cookiecutter ..."


setup: install
	cookiecutter https://github.com/illuminairy-ai/ent-aiml-template
	
	git init
	
	git config --local user.email "{{cookiecutter.author_email}}"
	git config --local user.name "{{cookiecutter.author_name}}"
	