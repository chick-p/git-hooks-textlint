# git-hooks-textlint

This Git hook is `pre-commit` that to assist writing document by using  `core.hooksPath`

## Features

* Cancel commit if a document has a word that's not right.
  * use the following rules:
    * [`textlint-rule-prh`](https://github.com/prh/prh)
* Ask whether to commit or not if a document has word that you should check.
  * use the following rules:
    * [`@textlint-rule/textlint-rule-pattern`](https://github.com/textlint-rule/textlint-rule-pattern)
    * [`@textlint-ja/textlint-rule-no-synonyms`](https://github.com/textlint-ja/textlint-rule-no-synonyms)

## Requirement

* Git 2.9+
* Docker

## Install

```shell
# Clone this repository
git clone https://github.com/chick-p/git-hooks-textlint git-hooks-textlint
cd git-hooks-textlint
TEXTLINT_HOOKS_REPOSITORY=$(pwd)

# Setup git global hooks
cd <your-project-repository>
git config --global core.hooksPath "$TEXTLINT_HOOKS_REPOSITORY"/hooks
```

## Custom patterns

### Case of cancel a commit

Use `textlint-rule-prh`

Add rule to `.config/prh.yml`
See [prh/prh](https://github.com/prh/prh/blob/master/misc/prh.yml)

### Case of ask to commit

Use `@textlint-rule/pattern`

Add RegExp pattern to `.config/textlintrc.json`  
See [textlint-rule/textlint-rule-pattern](https://github.com/textlint-rule/textlint-rule-pattern)
