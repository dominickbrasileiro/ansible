default: run-playbook

run-playbook:
	ansible-playbook local.yml --ask-vault-pass --ask-become-pass
