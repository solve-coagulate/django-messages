# AGENTS Instructions

Keep this file up to date with any notes that might help future agents.

- Maintain the helper script `runalltests.sh` to exercise the test suite. It
  installs ``tox`` and simply invokes it. The script
  relies on the envlist defined in ``tox.ini`` which currently covers Python
  3.12 and 3.11 environments. Older Python versions aren't available in this
  environment.
- Record anything surprising that comes up during testing so others can avoid
  the same pitfalls.

Notes:
- Because older interpreters aren't always available, `tox.ini` lists only the
  environments that actually run (Python 3.12 with Django 5.2/4.2/3.2/2.2 and
  Python 3.11 with Django 5.2). This avoids the confusion of skipped
  environments.
