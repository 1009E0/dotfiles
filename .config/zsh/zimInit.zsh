zstyle ':zim:zmodule' use 'degit'

ZIM_HOME=~/.zim
ZIM_CONFIG_FILE=~/.config/zsh/zimrc
# 安装 Zim
if [[ ! -e ${ZIM_HOME}/zimfw.zsh ]]; then
  curl -fsSL --create-dirs -o ${ZIM_HOME}/zimfw.zsh \
      https://github.com/zimfw/zimfw/releases/latest/download/zimfw.zsh
fi

# 自动安装缺失插件 + 更新 Zim 初始化脚本
if [[ ! ${ZIM_HOME}/init.zsh -nt ${ZDOTDIR:-${HOME}}/.zimrc ]]; then
  source ${ZIM_HOME}/zimfw.zsh init -q
fi

# 加载插件
source ${ZIM_HOME}/init.zsh


# 命令建议的匹配顺序：上一命令、命令补全
ZSH_AUTOSUGGEST_STRATEGY=(match_prev_cmd completion)

# 模糊搜索命令历史
HISTORY_SUBSTRING_SEARCH_FUZZY=true

# 配置上下方向键搜索命令历史
bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down

eval "$(zoxide init zsh)"
