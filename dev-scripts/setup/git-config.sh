# Git configuration
# Git user config to set the user email and name.

export COL_PROP_LENGTH=8
# Git User Email
# Env name should be uppercase without minus
EMAIL_VAR="${DEVF_PREFIX}_${ORGANISATION_ENV_NAME}_EMAIL"
EMAIL_VALUE="${!EMAIL_VAR:-}"
if devf_check_env_var "$EMAIL_VAR" "$EMAIL_VALUE" "$USER_ENV_SCOPE"; then

  git config user.email "$EMAIL_VALUE"
  devf_print_props "Email" "$EMAIL_VALUE"

else

  devf_echo_yellow "   No git email configured. $EMAIL_VAR variable is empty"

fi

# Git signing key is the long format dir
# gpg --list-secret-keys --keyid-format=long
SIGNING_KEY_VAR="${DEVF_PREFIX}_${ORGANISATION_ENV_NAME}_SIGNING_KEY"
SIGNING_KEY_VALUE="${!SIGNING_KEY_VAR:-}"
if devf_check_env_var "$SIGNING_KEY_VAR" "$SIGNING_KEY_VALUE" "$USER_ENV_SCOPE"; then

  git config user.signingkey "$SIGNING_KEY_VALUE"
  devf_print_props "GPG Key" "$SIGNING_KEY_VALUE"

  git config commit.gpgsign true
  devf_print_props "GPG Sign" "true"

else

  devf_echo_yellow "   No git pgp signing key configured. $SIGNING_KEY_VAR variable is empty"

fi
