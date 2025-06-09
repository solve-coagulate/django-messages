#!/usr/bin/env bash
set -euo pipefail

# Install tox and setuptools only; the environments will install their own deps
pip install -q tox setuptools

# Execute the tox matrix defined in tox.ini unless arguments specify
# particular environments. Pass any given arguments directly to ``tox``
# so callers may run a subset of environments, e.g. ``./runalltests.sh -e
# py3.12-d5.2``.
tox -q -r --skip-missing-interpreters "$@"
