#!/bin/sh

# Configure Git Replication
sed -i  's/__GITLAB_IP__/'${GITLAB_PORT_80_TCP_ADDR}'/g' /home/gerrit/gerrit/etc/replication.config
sed -i  's/__GITLAB_USER__/'${GITLAB_USER}'/g' /home/gerrit/gerrit/etc/replication.config
sed -i  's/__GITLAB_PASSWORD__/'${GITLAB_PASSWORD}'/g' /home/gerrit/gerrit/etc/replication.config
sed -i  's/__GITLAB_PROJ_ROOT__/'${GITLAB_PROJ_ROOT}'/g' /home/gerrit/gerrit/etc/replication.config

# Configure Gerrit
sed -i  's/__AUTH_TYPE__/'${AUTH_TYPE}'/g' /home/gerrit/gerrit/etc/gerrit.config

service supervisor start