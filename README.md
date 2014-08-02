codesync
========

Sync code between two machines -- from development to deployment

How to use
----------

Clone your project repo in your development machine (say, your Windows
laptop), and then run the following your deployment machine (say, your
Linux server):

  $ mkdir ~/code/myproject
  $ docker run -d -v ~/code/myproject:/code srid/codesync ${SECRET}

where `${SECRET}` is the read-only secret of your git clone path added
to BitTorrent Sync on your development machine.

What happens then
-----------------

Whenever you modify files on your development machine -- using
whatever tools of your choice, because now you aren't constrained by
the limitations of the deployment machine -- they will be
automatically synced to the deployment machine wherein you would run
the compile/ run/ debug cycle, which is not easily doable on your
development machine, especially if it is Windows.

Known issues
------------

* btsync can be slower in doing the sync, compared to Dropbox.