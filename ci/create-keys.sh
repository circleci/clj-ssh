#!/bin/sh
ssh-keygen -f ~/.ssh/clj_ssh    -t rsa -C "key for test clj-ssh" -N ""
ssh-keygen -f ~/.ssh/clj_ssh_pp -t rsa -C "key for test clj-ssh" -N "clj-ssh"
echo "from=\"localhost\" $(cat ~/.ssh/clj_ssh.pub)"    >> ~/.ssh/authorized_keys
echo "from=\"localhost\" $(cat ~/.ssh/clj_ssh_pp.pub)" >> ~/.ssh/authorized_keys
./ci/unlock-keys.sh
