#!/usr/bin/bash

set -o verbose

bundle update
bundle exec librarian-puppet update
rvmsudo bundle exec puppet apply --modulepath=./modules -e 'include site::role::leo'
