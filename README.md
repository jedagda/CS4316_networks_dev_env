# development-environment

Clone this repo into your host machine

Requirements: 
- Virtualbox 6.1
- Vagrant

Run:
vagrant up

Log into the virtual machine with the following credentials
username: vagrant
password: vagrant

Run:
sudo ./scripts/dev-env.sh

Once the script has finished run:

sudo shutdown now -r

After the environment has restarted run this command:
./scripts/virtualbox-setup.sh

./scripts/practicum-setup.sh