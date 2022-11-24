if [[ -f ~/.ssh/github_id_rsa ]]; then
	export GIT_SSH_COMMAND="ssh -i ~/.ssh/github_id_rsa"
	eval $(ssh-agent)
	ssh-add ~/.ssh/github_id_rsa
fi

git pull && \
git submodule update --recursive --remote
