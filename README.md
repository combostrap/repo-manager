# Repo Manager: Dynamic Git Repository Configuration


## About
Manage, init and update the common stuff on all your Git repositories.

## Concept / How it works

The [envrc](envrc/.envrc) file is the main entry

* Once [installed](#install), it will clone this repo locally at `../repo-manager`
* [install and configure the mandatory stuff](#installation-and-configuration)
* and update itself if needed

## Install

Prerequisite: [direnv](https://direnv.net/) should be installed on your computer.

Then:
```bash
# Init your repo
git init
# Install repo manager
curl -O https://raw.githubusercontent.com/combostrap/repo-manager/refs/heads/main/envrc/.envrc
# Type enter to kick envrc in or reload
direnv reload
```

## Installation and configuration

### Git User Configuration

Mandatory, you need to set in your `.bashrc`:
* `GIT_${ORGANIZATION_NAME}_EMAIL`
* `GIT_${ORGANIZATION_NAME}_SIGNING_KEY`

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

## Environment

You can change the behavior of the [envrc](envrc/.envrc) resource manager script by setting the following variable in
your shell profile, `~/.bashrc`, or `~/.config/direnv/direnvrc`, or `~/.envrc.local`.

The `PROJECT_ORGANISATION_NAME` variable optional.


| `RM_${ORGANIZATION_NAME}_DIR` | `RM_DIR` | The local file system location of the resource manager repository clone | `$PROJET_ROOT/../repo-manager` |
| `RM_${ORGANIZATION_NAME}_URI` | `RM_URI` | The URI location of the resource manager repository | https://github.com/combostrap/repo-manager |

## Script

In your scripts, you can use the following env:

| `PROJECT_ROOT` | The root directory of the git repo |
| `ORGANISATION_ENV_NAME` | The organization name in an env format |
| `RESOURCE_MANAGER_ENV_PREFIX` | The resource manager prefix (ie `RM`) |
