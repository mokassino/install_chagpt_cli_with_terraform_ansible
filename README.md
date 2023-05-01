# How to rapidly deploy sydney (until they fix it) with Ansible, Hetzner and Nodejs
1. `mkdir new-directory` and `cd` into it
2. run `curl -sL https://deb.nodesource.com/setup_18.x -o ./nodesource_setup.sh`
3. download the two ansible playbook and the ansible inventory, `pip install hcloud', edit `ansible.cfg` as needed to enable `hcloud`
4. Edit the playbooks and add hetzner token where needed
5. `ansible-playbook provision_server.yml` to provide a basic infrastructure, `ansible-playbook -i ansible_inv.hcloud.yml hcloud_install_chatgpt`
6. Connect to the server through the usual script:

```bash
#! /usr/bin/bash

ssh $1 -l root -i your-ssh-key # $1 is the first input, it expects an ip address
```

7. cd to `/opt/node-chatgpt-api` add the _U Cookie to settings.js, enable sydney by setting 'clientToUse:' to bing

COOKIE: (Yes honestly i don't care, if it get leaked i'm not going to lose something big, also i have a fake account on Bing)
```
1GpQyIbZMr0NpTPy3ZINj91pxbf7yZx4Z-QpmELtFWhG5R6_oZaOMbEn-OhNj9ZwvQdksPjQ9e65YXRnlXFWMvL5OBioF2ff1gQliA9zUCy66mymHXMwFJCjsOOf5JN31wSNFTXY70zMYNEg8aeTItaeyS5MPLLAZ-dM8s-2dUUZWACOsc3ro5qn5JrP6ZARffi9uzUA0C0fAzpu82PCe-heozPymQQi5apaucEiRrWs
```

8. ssh to the vps, run `chatgpt-cli` and enjoy sydney!
