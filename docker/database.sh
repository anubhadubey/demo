#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" <<-EOSQL
   
	create user temba with Password 'temba';
   	create database temba owner temba;

EOSQL
