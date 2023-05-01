# How to deploy Bing Ai (Sydney) with Terraform, Ansible based on Hetzner cloud
## Prerequisites && filling vars
1. Clone this repository
2. Install Terraform, Ansible
3. Get an Hetzner Account, create a new project, get a token and add it to the dynamic inventory `roles/ansible_inv.hcloud.yml` and to `terraform.tfvars`
4. Create an ssh key and bind it to an Hetzner project, edit `hcloud.tf` with the appropriate ssh key name/s 
5. Get a Microsoft account, use an extension like Cookie Manager to get the `_U` token inside cookies
6. Edit `roles/install_chatgpt/vars/main.yml` with appropriate values

## Deploy
1. Run `terraform init`, check that everything is correct with `terraform plan` before doing `terraform apply`
2. `ansible-playbook -i roles/ansible_inv.hcloud.yml roles/install_chatgpt.yml`
3. ssh to your VPS and run chatgpt-cli (if it doesn't work, run the command inside /opt/node-chatgpt-api)