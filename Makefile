# init
.PHONY: init
init: git/commit-template

# git
git/commit-template:
	git config commit.template ./.github/.gitmessage.txt &&\
	git config commit.cleanup strip

%:
	@:
