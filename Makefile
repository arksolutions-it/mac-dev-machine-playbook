install:
	ansible-galaxy install -r requirements.yml

macos: install
	ansible-playbook main-macos.yml -i inventory -K

clone-projects: install
	ansible-playbook main-linux.yml -i inventory --tags clone-projects

