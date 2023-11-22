# Ubuntu software install and configuration
## What this does
This program aims to install all necessary software and configuration in one step. You can modify this as you like for yourself and add/delete options.

For most users i recommend commenting out or deleting the 'specific' tasks like this `#- import_tasks: tasks/specific.yml` as they have some special configurations that not everyone might like.
## How to run it
### What you need to do before:
- create a ssh key and register it in `gitlab.lrz.de`
- have internet
- install basic tools to run ansible `./requirements.sh`
### Run the command
```
sudo ansible-playbook -b --become-user $USER playbook.yml
```
alternatively use `./run_ansible_install.sh` which does the same
### What you need to do afterward
#### Necessary
- create an api key for the dockerregistry at `gitlab.lrz.de:5005` [see template project under the docker paragraph](https://gitlab.lrz.de/tufast-eco-fallback/auxiliary/templates/template_ros_project/-/blob/main/README.md?ref_type=heads#docker)
- download a proper docker-compose file (usually in the autonom slack channel)
#### Optional
- to connect to the wifi (eduroam + tufast) you can copy `data/eduroam_wpa_supplicant.conf` and `data/tufast_wpa_supplicant.conf` wherever you want and use it to start and stop wifi. Use the following tool if you want to hash your password: `http://wlan.lrz.de/cgi-bin/nt-password-hash.py`. Use `sudo wpa_supplicant -i <interface> -c <conf-file>` to start the wifi and run the dhcp-client with `sudo dhclient <interface>` if necessary after wpa_supplicant successfully connected. Then you also need to set the namserver by adding `nameserver 1.1.1.1` to the file `/etc/resolv.conf`.
- another option is to use nmcli [(see this link)](https://askubuntu.com/questions/262491/connect-to-a-wpa2-enterprise-connection-via-cli-no-desktop)