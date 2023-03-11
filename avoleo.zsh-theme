# 
# avoleo.zsh-theme
# 
# Welcome to the avoleo zsh theme!
# 
# The Avoleo theme features a date and time prompt 
# for each command, as well as a command number in history. 
# In addition, it uses special symbols '⠾' and '⡶' to 
# display git if applicable in current path. 
# It also supports custom colors based 
# on the Gnome-Terminal default color palette.
# 
# Avoleo is a custom ZSH theme designed 
# for Ubuntu GNOME Terminal 
# with the built-in scheme "Tango Dark".
# 
# The avoleo theme is inspired by other popular Zsh themes, 
# such as af-magic, bira, fino-time and robbyrussell, 
# as well as the extravagant prompt designed by Flameleo.
# 
# To get started, simply download the theme from 
# our Git repository 
# at https://gitee.com/flameleo11/avoleo-zsh-theme.git 
# and follow the installation instructions in the README file.
# 
# Enjoy it!
# 

local PROMPT=''
local C1="%{$fg_bold[black]%}"
local C2="%{$fg_bold[red]%}"
local C3="%{$fg_bold[green]%}"
local C4="%{$fg_bold[yellow]%}"
local C5="%{$fg_bold[blue]%}"
local C6="%{$fg_bold[magenta]%}"
local C7="%{$fg_bold[cyan]%}"
local C8="%{$fg_bold[white]%}"
local LR="$LR"

local CA="%{$fg_bold[#B580F6]%}"
local CB="%{$fg_bold[#FAF89F]%}"
local CC="%{$fg_bold[#A6E22C]%}"
local CD="%{$fg_bold[#B580F6]%}"

local return_code="%(?.$C1%? ↵$LR.$C2%? ↵$LR)"
local user_symbol='%(!.#.$)'
local current_dir="%B$C5%~ $LR"

local vcs_branch='$(git_prompt_info)$(hg_prompt_info)'
local rvm_ruby='$(ruby_prompt_info)'
local venv_prompt='$(virtualenv_prompt_info)'

local debug_color='${C1}1.black$LR ${C2}2.red$LR ${C3}3.green$LR ${C4}4.yellow$LR ${C5}5.blue$LR ${C6}6.magenta$LR ${C7}7.cyan$LR ${C8}8.white$LR'

function virtualenv_info {
  [ $VIRTUAL_ENV ] && echo '('`basename $VIRTUAL_ENV`') '
}

function get_history_count {
  # local count=$(history | wc -l)
  local count=$(history -1 | awk '{print $1}')
  echo "$C4$count$LR"
}

function prompt_cmd_num {
  local count="$(get_history_count)"
  echo "$count"
}

function prompt_char {
  local char="$C1⠾$LR"
  if git branch >/dev/null 2>/dev/null; then
    char="$C8⡶$LR"
  fi
  echo "$char"
}

function prompt_arrow1 { 
  local prompt="$C2➜";
  if [[ $? -eq 0 ]]; then 
    prompt="$C1➜"; 
  fi; 
  echo " $prompt$LR  ";
} 

function prompt_arrow { 
  local prompt="$(prompt_arrow1)";
  echo " $prompt$LR  ";
} 
function prompt_up {
  local char="$C1⠖$LR"
  if git branch >/dev/null 2>/dev/null; then
    char="%B$C8⡶$LR%b"
  fi
  echo " $char  "
}

function prompt_down {
  local char="$C1⠴$LR"
  if git branch >/dev/null 2>/dev/null; then
    char="%B$C8⠾$LR%b"
  fi
  echo " $char  "
}

function prompt_venv {
  local venv="$(virtualenv_info)"
  echo "$C8$venv$LR"
}

function prompt_uname {
  local user_host="%n@%m"
  echo "$C1$user_host$LR"
}

function prompt_path { 
  local path="%~"; 
  echo "$C5$path$LR"; 
}


function prompt_git { 
  local info="$C1$(git_prompt_info)"; 
  if git branch >/dev/null 2>/dev/null; then
    info="$C8$(git_prompt_info)$(ruby_prompt_info)"
  fi
  echo "$info$LR"; 
}

function prompt_date { 
  # local time=" %D - %* "; 
  # local time=" %F - %T "; 
  local time=$(date +"%Y-%m-%d %H:%M:%S")
  echo "$C1$time$LR"
}
function prompt_time { 
  # local time=" %D - %* "; 
  # local time=" %F - %T "; 
  local time=$(date +"%H:%M:%S")
  echo "$C1$time$LR"
}


RPROMPT="%B${return_code}%b"
PROMPT+="
$C1╭─$LR \$(prompt_cmd_num)  \$(prompt_date)
$C1├─$LR \$(prompt_up) \$(prompt_uname) \$(prompt_venv)\$(prompt_path) ${vcs_branch}  \$(prompt_time)
$C1╰─$LR \$(prompt_down) $C8"

# show palette color
# PROMPT+="$debug_color"

ZSH_THEME_GIT_PROMPT_PREFIX=" $C8‹"
ZSH_THEME_GIT_PROMPT_SUFFIX=" $LR"
ZSH_THEME_GIT_PROMPT_DIRTY="› $C2✘"
ZSH_THEME_GIT_PROMPT_CLEAN="› $C3✔"
ZSH_THEME_RUBY_PROMPT_PREFIX="$C2‹"
ZSH_THEME_RUBY_PROMPT_SUFFIX="› $LR"
ZSH_THEME_RVM_PROMPT_OPTIONS="i v g"

ZSH_THEME_HG_PROMPT_PREFIX="$ZSH_THEME_GIT_PROMPT_PREFIX"
ZSH_THEME_HG_PROMPT_SUFFIX="$ZSH_THEME_GIT_PROMPT_SUFFIX"
ZSH_THEME_HG_PROMPT_DIRTY="$ZSH_THEME_GIT_PROMPT_DIRTY"
ZSH_THEME_HG_PROMPT_CLEAN="$ZSH_THEME_GIT_PROMPT_CLEAN"

ZSH_THEME_VIRTUAL_ENV_PROMPT_PREFIX="$C3‹"
ZSH_THEME_VIRTUAL_ENV_PROMPT_SUFFIX="› $LR"
ZSH_THEME_VIRTUALENV_PREFIX="$ZSH_THEME_VIRTUAL_ENV_PROMPT_PREFIX"
ZSH_THEME_VIRTUALENV_SUFFIX="$ZSH_THEME_VIRTUAL_ENV_PROMPT_SUFFIX"
