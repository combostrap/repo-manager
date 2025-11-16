
# Function to check if a user environment variable is set
# Scope of env
USER_ENV_SCOPE="user"
rm_check_env_var() {
    local var_name="$1"
    local var_value="$2"
    local var_scope="${3:-}"

    if [ -z "$var_value" ]; then
        if [ "$var_scope" == "$USER_ENV_SCOPE" ]; then
          echo "ERROR: $var_name environment variable is not set"
          echo "  Please set $var_name in your shell profile, ~/.bashrc, ~/.zshrc, or ~/.config/direnv/direnvrc, or ~/.envrc.local"
        fi
        return 1
    fi
    return 0
}
