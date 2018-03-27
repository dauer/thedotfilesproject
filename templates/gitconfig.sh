#!/usr/bin/env bash

. ./templates/settings/gitconfig.properties

cat << EOF
[user]
    email = ${EMAIL}
    name = ${NAME}

[color]
    ui = true
    pager = true
    diff = true
    status = true
    cherry = true
    branch = true

[color "branch"]
    current = yellow reverse
    local = yellow
    remote = green

[color "diff"]
    meta = cyan
    frag = magenta
    old = red
    new = green

[color "status"]
    added = yellow
    changed = green
    untracked = cyan
    branch = yellow

[color "interactive"]
    prompt = yellow

[alias]
    lg = log --decorate

[core]
    pager = ${PAGER}
    editor = ${EDITOR}

[i18n]
    logOutputEncoding = utf8

[help]
    autocorrect = 0

[push]
    default = simple

[pull]
    rebase = true

[rebase]
    autoStash = true
EOF
