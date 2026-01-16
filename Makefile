default: run-playbook

run-playbook:
	doppler run -- ansible-playbook local.yml --vault-password-file ./.vault_pass.sh
