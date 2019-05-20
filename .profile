# vim: filetype=shell
#  ____  ____   ___  _____ ___ _     _____ 
# |  _ \|  _ \ / _ \|  ___|_ _| |   | ____|
# | |_) | |_) | | | | |_   | || |   |  _|  
# |  __/|  _ <| |_| |  _|  | || |___| |___ 
# |_|   |_| \_\\___/|_|   |___|_____|_____|
#                                          
# Источник настройки приложений при входе
# Написан: @alexandrovich.ff
# Website: http://malikov.red

# Переменные окружения
export PATH="$PATH:$(du "$HOME/.local/bin/" | cut -f2 | tr '\n' ':' | sed 's/:*$//')"
export EDITOR="nvim"
export TERMINAL="$HOME/.local/bin/tools/::terminal"
export TERM=xterm-color
export BROWSER="firefox"
export READER="zathura"
export FILE="vifm"
export SUDO_ASKPASS="$HOME/.local/bin/tools/::dmenupass"

# Цветовая палитра LESS
export LESS=-R
export LESS_TERMCAP_mb="$(printf '%b' '[1;31m')"; a="${a%_}"
export LESS_TERMCAP_md="$(printf '%b' '[1;36m')"; a="${a%_}"
export LESS_TERMCAP_me="$(printf '%b' '[0m')"; a="${a%_}"
export LESS_TERMCAP_so="$(printf '%b' '[01;44;33m')"; a="${a%_}"
export LESS_TERMCAP_se="$(printf '%b' '[0m')"; a="${a%_}"
export LESS_TERMCAP_us="$(printf '%b' '[1;32m')"; a="${a%_}"
export LESS_TERMCAP_ue="$(printf '%b' '[0m')"; a="${a%_}"

# Запуск графического сервера, если i3 еще не запущен. 
# [ "$(tty)" = "/dev/tty1" ] && ! pgrep -x i3 >/dev/null && exec startx
