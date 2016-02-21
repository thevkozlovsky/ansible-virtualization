#
# Tasks Makefile
# ==============
#
# Shortcuts for various tasks.
#
# This file is part of the `ansible-virtualization` package.
# (c) 2014-2016 Vladimir Kozlovski <inbox@vladkozlovski.com>
#
# For the full copyright and license information, please view the LICENSE
# file that was distributed with this source code.
#

help:
	@echo "Please use \`make <target>' where <target> is one of"
	@echo "  host-prod       to install the required software for production site"
	@echo "  host-stage      to install the required software for stage site"
	@echo "  guest-prod      to create and run the virtual machine in production site"
	@echo "  guest-stage     to create and run the virtual machine in stage site"


host-prod:
	@(ansible-playbook -i prod kvm.yml)

host-stage:
	@(ansible-playbook -i stage kvm.yml)


guest-prod:
	@(ansible-playbook -i prod guests.yml)

guest-stage:
	@(ansible-playbook -i stage guests.yml)
