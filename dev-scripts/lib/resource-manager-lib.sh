
function rm_echo_yellow(){
    YELLOW="\033[0;33m"
    NO_COLOR="\033[0m"
    echo -e "${YELLOW}$1$NO_COLOR"
}

# Function to check if a user environment variable is set
# Scope of env
USER_ENV_SCOPE="user"
rm_check_env_var() {
    local var_name="$1"
    local var_value="$2"
    local var_scope="${3:-}"

    if [ "$var_value" == "" ]; then
        if [ "$var_scope" == "$USER_ENV_SCOPE" ]; then
          rm_echo_yellow "   ERROR: $var_name environment variable is not set"
          rm_echo_yellow "     Please set $var_name in your shell profile, ~/.bashrc, ~/.zshrc, or ~/.config/direnv/direnvrc, or ~/.envrc.local"
        fi
        return 1
    fi
    return 0
}
