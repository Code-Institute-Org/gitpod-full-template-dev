#!/bin/bash

# Gives a personalised greeting
# Adds configuration options for SQLite
# Author: Matt Rudge

echo "Setting the greeting"
sed -i "s/USER_NAME/$GITPOD_GIT_USER_NAME/g" ${GITPOD_REPO_ROOT}/README.md
echo "Copying the Postgres config files"
cp $GITPOD_REPO_ROOT/.vscode/pg_hba.conf /workspace/.pgsql/data/
echo "Creating .sqliterc file"
echo ".headers on" > ~/.sqliterc
echo ".mode column" >> ~/.sqliterc
echo "Your workspace is ready to use. Happy coding!"
