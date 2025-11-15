# Repo Manager: Dynamic Git Repository Template


## About
Manage and init the common stuff on all your repository

## Concept / How it works

The [envrc](envrc/.envrc) file is the main entry

* Once [installed](#install), it will clone this repo locally at `../repo-shared`
* [install and configure the mandatory stuff](#installation-and-configuration)
* and update itself if needed

## Install

Prerequisite: [direnv](https://direnv.net/) should be installed on your computer.

Then:
```bash
# Init your repo
git init
# Install repo shared
curl -O https://raw.githubusercontent.com/combostrap/repo-shared/refs/heads/main/envrc/.envrc
# Type enter to kick envrc in or
direnv reload
```

## Installation and configuration

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

### Default .gitignore and .gitattributes installation

Default  [.gitignore](git/ignore/.gitignore) and [.gitattributes](git/ignore/.gitattributes) are installed if not found.

### Default License

Default License is installed if not found

