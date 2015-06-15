sandbox-desktop
===

A simple Puppet sandbox for experimenting with configuring a Fedora 21+ desktop
system.

Usage
===

```shell
bundle update
bundle exec librarian-puppet update
rvmsudo bundle exec puppet apply --modulepath=./modules -e 'include site::role::leo'
```
