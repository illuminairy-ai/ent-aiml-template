[![Python 3.11](https://img.shields.io/badge/python-3.11-blue.svg)](https://www.python.org/downloads/release/python-3114/)
[![PyPI downloads month](https://img.shields.io/pypi/dm/snowflake-ai.svg)](https://pypi.python.org/pypi/snowflake-ai/)

## Enterprise AI/ML project template


### Purpose

* Speedup AI/ML project enablement in your enterprise
* Create a well-governed and easily-adopted readable project structure
* Efficiently manage your project's dependencies
* Automate your MLOps


### Structure
```bash
.
├── {{cookiecutter.project_name}}                # project name (target project directory)
  ├── {{cookiecutter.directory_name}}            # project code/script source directory
  │   ├── __init__.py                            # to make project source a Python module
  ├── apps                                       # application root directory for your project deployment
  │   ├── {{cookiecutter.directory_name}}        # your project deployed as an app  
  ├── conf                                       # configurations and setups specific to your domain and environment
  │   ├── pov                                    # proof-of-value		
  │   ├── dev                                    # development/workspace environment
  │   ├── qat                                    # qa/test environment
  │   ├── stg                                    # stage/uat environment
  │   ├── prd                                    # production environment		
  ├── data                                       # local data directory
  │   ├── external                               # external data (outside of enterprise and operational data scope)		
  │   ├── processed                              # data after being processed
  │   ├── raw                                    # raw data
  │   ├── transform                              # intermediate data that is in processing
  ├── dist                                       # artifacts that are staged for distribution
  ├── docs                                       # documentation for your project
  ├── flows                                      # MLflow and other MLOps pipelines root directory
  ├── logs                                       # local log files for your project
  ├── media                                      # images, videos, audios etc. files
  ├── models                                     # ML models store or local registry
  ├── notebooks                                  # notebooks store
  │   ├── {{cookiecutter.directory_name}}.ipynb  # project code/script source directory
  ├── public                                     # web server root directory for serving
  ├── tests                                      # tests project parent directory
  │   ├── {{cookiecutter.directory_name}}        # project code/script source		
  │   ├── __init__.py                            # to make tests a Python module 
  ├── CHANGELOG.md                               # to release version change log
  ├── Makefile                                   # commands to config and setup the environment
  ├── poetry.lock                                # file auto-created by the Poetry used for the dependencies management
  ├── pyproject.toml                             # dependencies and project management for Poetry
  ├── README.md                                  # your project description
  └── .gitignore                                 # ignore files that cannot commit to Git
```


### Usage

1. Make sure *cookiecutter* is installed. For example, when using pip:
```bash
pip install cookiecutter
```

Or, in conda, you can do:
```bash
conda config --add channels conda-forge
conda install cookiecutter

```


2. Create a project based on this template, go to the parent directory of the target project directory, do the following and follow the prompt (it is recommended to follow the '-' and '_' convention in naming the project and directory):
```bash
cookiecutter https://github.com/illuminairy-ai/ent-aiml-template.git
```
Also, follow your company's overall project hierarchy to create the root and neccessary parent directories for this project structure is strongly recommended.


### Additional Info
* [Makefile](https://www.gnu.org/software/make/manual/make.html): DevOps automation to create short and readable commands for repeatable tasks
* [Poetry](https://python-poetry.org/): Modern dependency management
* [Prefect](https://www.prefect.io/): Dataops automation to orchestrate and observe data pipelines 
* [Pydantic](https://docs.pydantic.dev/): Data validation using Python type annotations 
* [pdoc](https://github.com/mitmproxy/pdoc): A simple tool to auto-generate API documentation for Python libraries
* [GitHub Actions](https://docs.github.com/en/actions): Automation of git workflows


## License

This project is licensed under the Apache 2.0 License - see the [LICENSE](https://github.com/illuminairy-ai/ent-aiml-template/blob/master/LICENSE.txt) file for details.