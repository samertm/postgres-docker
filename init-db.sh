#!/bin/bash

DB_USER=TESTDB-USER
DB_NAME=TESTDB-NAME

{ gosu postgres postgres --single -jE <<-EOSQL
    CREATE USER "$DB_USER";
EOSQL
} &&
{ gosu postgres postgres --single -jE <<-EOSQL
    CREATE DATABASE "$DB_NAME";
EOSQL
} &&
{ gosu postgres postgres --single -jE <<-EOSQL
    GRANT ALL PRIVILEGES ON DATABASE "$DB_NAME" TO "$DB_USER";
EOSQL
}
