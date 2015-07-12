# postgres-docker

A simple skeleton for spinning up Postgres Docker containers for
development and production use.

# How To Use

Copy `postgres-docker` into a subfolder into your project. In
`Makefile`, change `IMAGE_NAME` and `CONTAINER_NAME` to the
appropriate values. Do the same in `init-db.sh` with `DB_USER` and
`DB_NAME`.

Then call `make docker-build` to build the Docker container, and `make
run-dev` to run the Docker container locally and publish port 5432.

Connect to the Docker container with `psql -h localhost -U <DB_USER>`.

### Make Commands

```
make docker-build # Builds the Docker container.
make run-dev      # Runs the Docker container.
```
