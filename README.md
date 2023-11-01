# ansible-module-demo

The aim of this repo is to help you get started developing
simple custom modules for Ansible.

## Dev environment prerequisites

- [Docker](https://docs.docker.com/get-docker/)
- Python3 interpreter
- [docker-compose](https://docs.docker.com/compose/install/)

## Dev environment setup

To bring up the database and snipe-it, run:

```
make dev
```
The web app will be port-forwarded to `localhost:8080`

This does not go through the initial setup of snipe-it.
For convenience, a DB dump with a basic setup is included - you can run:

```
make setup-db
```

Anytime you run this, it will reset the dev environment to a barebones setup
with `admin`/`password` set as the login credentials.

It's helpful if you make a lot of changes and you'd like to reset to a clean state.

To bring down the containers and delete volumes,
but keep the virtual environment, run:

```
make down
```

To clean up everything, including the venv:
```
make venv
```