#!/usr/bin/env bash

profile="
root = ./projects/
root = ssh://default///home/vagrant/projects/
ignore = Name {.git,.vagrant,.unison}

prefer = ./projects/
repeat = 2
terse = true
dontchmod = true
perms = 0
sshargs = -F .sshargs
"

vagrant ssh-config > .sshargs
mkdir -p ./.unison && echo "$profile" > ./.unison/profile

UNISON=$(pwd)/.unison unison profile