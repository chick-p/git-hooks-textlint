# git-hooks-textlint

Git hooks to assist writing document.  
Git Hooks using `core.hooksPath` on Git 2.9+

## Features

* Cancel commit if a document has a word that's not right.
  * use `textlint-rule-prh`
* Ask whether to commit or not if a document has word that you should check.
  * use `@textlint-rule/pattern`

## Hooks

* `pre-commit`

## Requirement

* Git 2.9+
* Docker

## Install

```shell
# clone this repository
git clone https://github.com/chick-p/git-hooks-textlint git-hooks-textlint
cd git-hooks-textlint
TEXTLINT_HOOKS_REPOSITORY=$(pwd)

# setup git config using local hooks
cd <your-project-repository>
git config --local core.hooksPath "$TEXTLINT_HOOKS_REPOSITORY"/hooks
```

## Customize patterns

### Case of cancel a commit

Use `textlint-rule-prh`

Add rule to `.config/prh.yml`
See [prh/prh](https://github.com/prh/prh/blob/master/misc/prh.yml)

### Case of ask to commit

Use `@textlint-rule/pattern`

Add RegExp pattern to `.config/textlintrc.json`  
See [textlint-rule/textlint-rule-pattern](https://github.com/textlint-rule/textlint-rule-pattern)
