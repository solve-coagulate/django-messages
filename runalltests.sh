#!/usr/bin/env bash
set -euo pipefail

# Install tox only; the environments will install their own deps
pip install -q tox

# Execute the tox matrix defined in tox.ini
tox -q -r --skip-missing-interpreters
