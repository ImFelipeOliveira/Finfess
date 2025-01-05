#!/bin/sh

set -e

poetry run python src/manage.py migrate --no-input

poetry run python src/manage.py collectstatic --no-input

poetry run python src/manage.py runserver 0.0.0.0:8080
