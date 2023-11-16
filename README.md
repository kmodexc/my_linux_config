# Ubuntu software install and configuration
## What this does
This program aims to install all necessary software and configuration in one step. You can modify this as you like for yourself and add/delete options.

For most users i recommend commenting out or deleting the 'specific' tasks like this `#- import_tasks: tasks/specific.yml` as they have some special configurations that not everyone might like.
## How to run it
### What you need to do before:
- create a ssh key and register it in `gitlab.lrz.de`
- have internet
### Run the command
```
sudo ansible-playbook -b --become-user $USER playbook.yml
```
### What you need to do afterward
- create an api key for the dockerregistry at `gitlab.lrz.de:5005` (see template project)
- download a proper docker-compose file