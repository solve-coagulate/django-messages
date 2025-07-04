==========================================
A user-to-user messaging system for Django
==========================================

Django-messages enables your users to send private messages to each other.
It provides a basic set of functionality that you would expect from such a system.
Every user has an Inbox, an Outbox and a Trash. Messages can be composed and
there is an easy, url-based approach to preloading the compose-form with the
recipient-user, which makes it extremly easy to put "send xyz a message" links
on a profile-page.

Currently django-messages comes with over 20 translations, see them here:
https://github.com/arneb/django-messages/tree/master/django_messages/locale


Versions
--------

+--------+-------------------------------------------------------------------+
| master | compatible with Django 2.2 - 5.2                                 |
+--------+-------------------------------------------------------------------+
| 0.6.x  | compatible with Django 1.7 - 1.11 and with Python 3               |
+--------+-------------------------------------------------------------------+
| 0.5.x  | compatible with Django 1.4, 1.5, 1.6 and 1.7; if you are          |
|        | upgrading from 0.4.x to trunk please read the UPGRADING docs.     |
+--------+-------------------------------------------------------------------+
| 0.4.x  | compatible with Django 1.1 (may work with Django 1.0/1.2), no     |
|        | longer maintained                                                 |
+--------+-------------------------------------------------------------------+
| 0.3    | compatible with Django 1.0, no longer maintained                  |
+--------+-------------------------------------------------------------------+


Documentation
-------------

The documentation is contained in the /docs/ directory and can be build with
sphinx. A HTML version of the documentation is available at:
http://django-messages.readthedocs.org


Install
-------
Download the tar archive, unpack and run python setup.py install or checkout
the trunk and put the ``django_messages`` folder on your ``PYTHONPATH``.
Released versions of django-messages are also available on pypi and can be
installed with easy_install or pip.


Usage
-----

Add ``django_messages`` to your ``INSTALLED_APPS`` setting and add an
``include('django_messages.urls')`` at any point in your url-conf.

The app includes some default templates, which are pretty simple. They
extend a template called ``base.html`` and only emit stuff in the block
``content`` and block ``sidebar``. You may want to use your own templates,
but the included ones are good enough for testing and getting started.


Dependencies
------------

Django-messages has no external dependencies except for django. However, if
pinax-notifications and/or django-mailer are found, it will make use of them.
Note: as of r65 django-messages will only use pinax-notifications if
'pinax.notifications' is also added to the INSTALLED_APPS setting. This has been
done to make situations possible where notification is on pythonpath but
should not be used, or where notification is another python package, such as
django-notification which has the same name.

Testing
-------

The helper script ``runalltests.sh`` installs ``tox`` and invokes it. ``tox`` executes the test matrix defined in ``tox.ini`` so no
environments are listed manually in the script.
Currently we run:

- Python 3.12 with Django 5.2, 4.2, 3.2 and 2.2
- Python 3.11 with Django 5.2

Other historical environments have been removed from ``tox.ini`` so the matrix
reflects exactly what is executed.



