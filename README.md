Install RedHat OKD 3.11 on your own server.  For a local only install, it is suggested that you use CDK or MiniShift instead of this repo.  This install method is targeted for a single node cluster that has a long life.

This repository is a set of scripts that will allow you easily install the latest version (3.11) of OKD in a single node fashion.  What that means is that all of the services required for OKD to function (master, node, etcd, etc.) will all be installed on a single host.  The script supports a custom hostname which you can provide using the interactive mode.

## Installation

1. Clone this repo

```
git clone https://github.com/akhilreddyjirra/okd-centos.git
```

2. Execute the installation script

```
cd okd-centos
./install-openshift.sh
```
