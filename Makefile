# init
.PHONY: init
init: git/commit-template

# flutter
.PHONY: format
format:
	dart format $(find lib -name "*.dart" -not \( -name "*.*freezed.dart" -o -name "*.*g.dart" -o -name "oss_licenses.dart" \) ) --set-exit-if-changed

.PHONY: lint
lint:
	flutter analyze --no-fatal-infos

.PHONY: gen
gen:
	flutter gen-l10n  --no-nullable-getter

# git
.PHONY: precommit
precommit: format lint

.PHONY: git/commit-template
git/commit-template:
	git config commit.template ./.github/.gitmessage.txt &&\
	git config commit.cleanup strip

%:
	@:
