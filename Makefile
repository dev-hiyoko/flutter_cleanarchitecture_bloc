# init
.PHONY: init
init: git/commit-template

gen:
	flutter gen-l10n  --no-nullable-getter

# git
git/commit-template:
	git config commit.template ./.github/.gitmessage.txt &&\
	git config commit.cleanup strip

%:
	@:
