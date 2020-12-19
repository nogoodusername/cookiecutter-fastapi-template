# CookieCutter FastAPI Template

A [cookiecutter](https://cookiecutter.readthedocs.io/en/1.7.2/README.html) template for Python packages.

## Stack
* [FastAPI](https://fastapi.tiangolo.com/)
* [Uvicorn](https://www.uvicorn.org/)
* [Gunicorn](https://gunicorn.org/)
* [Pydantic](https://pydantic-docs.helpmanual.io/)
* [Starlette](https://www.starlette.io/)
* [Docker](https://www.docker.com/)
* [Pytest](https://docs.pytest.org/en/latest/)


## Requirements
- Cookiecutter

```
pip install cookiecutter
```
---

## Usage

1. #### Generate Your FastAPI Project
   ```
   cookiecutter gh:nogoodusername/cookiecutter-fastapi-template
   ```

   You will asked to fill in below details:

   `author_name`: Main Author of the library (Used in LICENSE, README.md)   
   `author_email`: Contact email of the author (Used in LICENSE, README.md)      
   `service_name`: Name of the FastAPI service project (Used in Makefile, README.md)   
   `service_description`: One line description of the library (Used in LICENSE, README.md)   
   `service_port`: Service run port (Used in Makefile and Dockerfile)     
   `open_source_license`: Option to select an open source license type.   

2. #### Add a Git Repo
   Create a new repo for `service_name` in Github or your preferred Git repository hosting site. 

   You will find a folder named [`service_name`]. Move into the folder, and setup your git repo there.

   ```
   cd [service_name]
   git init .
   git add .
   git commit -m "Initial commit"
   git remote add origin git@[your-package-repo]
   git push -u origin master
   ```

3. #### Install Dev Requirements
   Install Dev Requirements using `pip`

   ```
    make init
   ```

4. #### Add your service code and start developing
   You are good to go, you can add code to the service and start developing.
---

## Deployments

### Changelog
Changelogs are maintained using [Keep a Changelog](https://keepachangelog.com/en/1.0.0/) format.

### Deployment using Docker image
This template provides production & staging sample Dockerfiles.   
The dockerization is done using [tiangolo/uvicorn-gunicorn-fastapi-docker](https://github.com/tiangolo/uvicorn-gunicorn-fastapi-docker). This image has autotuning included and adjust paramters based on the server it is running on to get best performance.   
You can build your own docker image and run the same using `docker run` or `docker-compose`

```
version: 3
services:
  api:
    container_name: api
    image: "[docker-image]:latest"
    environment:
      - FLAVOUR=prod 
      - PORT={service_port}
    ports:
      - {service_port}:{service_port}
```

#### Docker image configurations

Find additional configurations for [tiangolo/uvicorn-gunicorn-fastapi-docker](https://github.com/tiangolo/uvicorn-gunicorn-fastapi-docker):    
* [Additional Usage](https://github.com/tiangolo/uvicorn-gunicorn-fastapi-docker#advanced-usage)
* [WORKER_PER_CORE](https://github.com/tiangolo/uvicorn-gunicorn-fastapi-docker#workers_per_core)
* [WEB_CONCURRENCY](https://github.com/tiangolo/uvicorn-gunicorn-fastapi-docker#web_concurrency)
* [PORT](https://github.com/tiangolo/uvicorn-gunicorn-fastapi-docker#port)

---

### Sample project generated from this template
https://github.com/nogoodusername/fastapi-userless-service