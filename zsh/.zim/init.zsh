# FILE AUTOMATICALLY GENERATED FROM /data7/xyh/.config/zsh/.zimrc
# EDIT THE SOURCE FILE AND THEN RUN zimfw build. DO NOT DIRECTLY EDIT THIS FILE!

if [[ -e ${ZIM_CONFIG_FILE:-${ZDOTDIR:-${HOME}}/.zimrc} ]] zimfw() { source "${HOME}/.config/zsh/.zim/zimfw.zsh" "${@}" }
fpath=("${HOME}/.config/zsh/.zim/modules/utility/functions" "${HOME}/.config/zsh/.zim/modules/git-info/functions" "${HOME}/.config/zsh/.zim/modules/zsh-completions/src" ${fpath})
autoload -Uz -- mkcd mkpw coalesce git-action git-info
source "${HOME}/.config/zsh/.zim/modules/environment/init.zsh"
source "${HOME}/.config/zsh/.zim/modules/input/init.zsh"
source "${HOME}/.config/zsh/.zim/modules/utility/init.zsh"
source "${HOME}/.config/zsh/.zim/modules/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
source "${HOME}/.config/zsh/.zim/modules/zsh-autosuggestions/zsh-autosuggestions.zsh"
