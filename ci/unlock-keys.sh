#!/usr/bin/expect -f
spawn ssh-add $env(HOME)/.ssh/clj_ssh_pp
expect "Enter passphrase for"
send "clj-ssh\n";
interact
