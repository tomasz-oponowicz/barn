# Barn

Barn is a sample [Vagrant](https://www.vagrantup.com/) configuration. [Unison](https://www.cis.upenn.edu/~bcpierce/unison/), a bidirectional file synchronization tool, is used to synchronize data between host and guest. The guest machine comes with [Docker](https://www.docker.com/) preinstalled.

# Run (OS X hint)

* Install [VirtualBox](https://www.virtualbox.org/):

      brew cask install virtualbox

* Install [Vagrant](https://www.vagrantup.com/):

      brew cask install vagrant

* Install [Unison](https://www.cis.upenn.edu/~bcpierce/unison/) __2.48.3__:

      brew install unison

* Install [Git](https://git-scm.com/):

      brew install git

* Clone repository:

      git clone git@github.com:tomasz-oponowicz/barn.git

* Change directory:

      cd <barn-workspace>

* Create and configure the guest machine:

      vagrant up

* Connect to the guest machine:

      vagrant ssh

* Start bidirectional synchronization between the host and the guest in a new terminal window:

      cd <barn-workspace>
      ./sync.sh

  ...`./projects` (host) is synchronized with `/home/vagrant/projects` (guest).