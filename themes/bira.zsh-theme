# ZSH Theme - Preview: http://gyazo.com/8becc8a7ed5ab54a0262a470555c3eed.png
local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"


# COLOR SETTINGS
BIRA_BRACKET_COLOR="%{$fg[white]%}"
BIRA_TIME_COLOR="%{$fg[yellow]%}"
BIRA_RVM_COLOR="%{$fg[magenta]%}"
BIRA_DIR_COLOR="%{$fg[cyan]%}"
BIRA_GIT_BRANCH_COLOR="%{$fg[green]%}"
BIRA_GIT_CLEAN_COLOR="%{$fg[green]%}"
BIRA_GIT_DIRTY_COLOR="%{$fg[red]%}"

ZSH_THEME_GIT_PROMPT_PREFIX="$BIRA_BRACKET_COLOR$BIRA_GIT_BRANCH_COLOR"
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_CLEAN=" $BIRA_GIT_CLEAN_COLOR✓"
ZSH_THEME_GIT_PROMPT_DIRTY=" $BIRA_GIT_DIRTY_COLOR✗"

eval PR_BOLD="%{$terminfo[bold]%}"



BIRA_TIME_="$BIRA_BRACKET_COLOR{$BIRA_TIME_COLOR%T$BIRA_BRACKET_COLOR}%{$reset_color%}"
local user_host='%{$terminfo[bold]$fg[green]%}%n@%m%{$reset_color%}'
local current_dir='%{$terminfo[bold]$fg[blue]%} %~%{$reset_color%}'
local rvm_ruby=''
if which rvm-prompt &> /dev/null; then
  rvm_ruby='%{$fg[red]%}‹$(rvm-prompt i v g)›%{$reset_color%}'
else
  if which rbenv &> /dev/null; then
    rvm_ruby='%{$fg[red]%}‹$(rbenv version | sed -e "s/ (set.*$//")›%{$reset_color%}'
  fi
fi
local git_branch='[$(git_prompt_info)%{$reset_color%}]'

PROMPT="┌─$BIRA_TIME_ ${user_host} ${current_dir} ${rvm_ruby} ${git_branch}
└─$PR_BOLD➤ %B$%b "
RPS1="${return_code}"


