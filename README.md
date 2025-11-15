# Repo Shared Scripts and Configuration


## About
Common scripts and configuration used in Combostrap repositories.

## Install

Prerequisite: [direnv](https://direnv.net/) should be installed on your computer.

Then:
```bash
# Init your repo
git init
# Install repo shared
curl -O https://raw.githubusercontent.com/combostrap/repo-shared/refs/heads/main/envrc/.envrc
# Type enter to kick envrc in
```

The [.envrc](envrc/.envrc) file is the main entry point and update itself.

## Features

### Git User Configuration

Mandatory, you need to set in your `.bashrc`:
* `GIT_COMBOSTRAP_EMAIL`
* `GIT_COMBOSTRAP_SIGNING_KEY`

See [Git User Configuration](git/config/user)

### Git Hooks Configuration

Git hooks are installed at `.git-hooks`

See [Git Hooks Configuration](git/config/hooks)

### Git Commit Message Hook Installation

Install [commit message hook](git/hooks/commit-msg)

### Scripts in PATH

Install the common [scripts](bin) in the `PATH`

### Editor Config for code styling

Install the [root editor config](editorconfig/root/.editorconfig)

## Concept

The [envrc](envrc/.envrc) file is the main entry

* It will clone this repo locally
* install and configure the mandatory stuff
* and update itself if needed
