#!/bin/bash -ex

SECRET=$1
CONFFILE=/btsync/btsync.conf

# Set bysync device name to container hostname
perl -pi -e "s/NAMEPLACEHOLDER/`hostname`/g" ${CONFFILE}

# Pass the btsync read-only secret
perl -pi -e "s/SECRETPLACEHOLDER/${SECRET}/g" ${CONFFILE}
cat ${CONFFILE}

btsync --config ${CONFFILE} --nodaemon
