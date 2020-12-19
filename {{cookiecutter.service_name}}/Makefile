export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LC_TYPE=en_US.UTF-8

help:
	@echo "Makefile for {{cookiecutter.service_name}}"
	@echo "When running any of run commands ensure that you have activated your python virtual environment"
	@echo "\033[33;36m"
	@echo "init			Install required packages."
	@echo "runserver		Run fastapi server {{cookiecutter.service_port}}"
	@echo "runtests		Run pytests {{cookiecutter.service_port}}"

init:
	pip install -r app/requirements/development.txt
	pre-commit install

runserver:
	export FLAVOUR=dev && uvicorn --app-dir app --reload --port {{ cookiecutter.service_port }} main:app

runtests:
	pytest app
