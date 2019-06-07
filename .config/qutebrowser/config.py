## adblock
c.content.host_blocking.lists.append( str(config.configdir) + "/adblock")

## themes
config.source('themes/nord.py')

# general settings
c.url.start_pages = 'file:///home/flappy/.local/browser-homepage/v1/index.html'
c.url.default_page = 'file:///home/flappy/.local/browser-homepage/v1/index.html'
c.editor.command = ["$TERMINAL", "--title", "qutebrowser-edit", "-e", "nvim", "-f", "{}"]
c.new_instance_open_target = "tab-bg"
c.prompt.filebrowser = True
c.completion.height = "30%"
c.completion.web_history.max_items = 1000
c.input.partial_timeout = 2000
c.tabs.background = True
c.tabs.favicons.show = "never"
c.tabs.title.format = "{title}"
c.tabs.new_position.related = "last"
c.downloads.location.directory = '/home/flappy/Загрузки'
c.content.cache.size = 52428800
c.content.webgl = False
c.content.host_blocking.enabled = False
c.hints.border = "1px solid #CCCCCC"
c.hints.mode = "number"
c.hints.chars = "123456789"
c.hints.min_chars = 1
c.keyhint.blacklist = ["*"]

# searches
c.url.searchengines['DEFAULT'] = 'http://www.google.com/search?hl=ru&q={}'

# aliases
c.aliases = {
    "q": "quit",
    "c": "history-clear",
    "w": "session-save",
    "wq": "quit --save",
    "mpv": "spawn -d mpv --force-window=immediate {url}",
    "pass": "spawn --userscript pass",
}

# fonts
c.fonts.tabs = "10pt Terminus (TTF)"
c.fonts.statusbar = "10pt TerminessTTF Nerd Font"
c.fonts.downloads = c.fonts.statusbar 
c.fonts.prompts = c.fonts.statusbar
c.fonts.hints = "13px Terminus (TTF)"
c.fonts.messages.info = "10pt Terminus (TTF)"
c.fonts.keyhint = c.fonts.messages.info
c.fonts.messages.warning = c.fonts.messages.info
c.fonts.messages.error = c.fonts.messages.info
c.fonts.completion.entry = c.fonts.statusbar
c.fonts.completion.category = c.fonts.statusbar

# keybinds
config.unbind('gb', mode='normal')
config.unbind('b', mode='normal')
config.unbind('m', mode='normal')
config.unbind('<Ctrl-B>', mode='normal')
config.bind('<Ctrl-r>', 'restart', mode='normal')
config.bind('<Ctrl-Right>', 'tab-next', mode='normal')
config.bind('<Ctrl-Left>', 'tab-prev', mode='normal')
config.bind('<Ctrl-Shift-Right>', 'tab-move +', mode='normal')
config.bind('<Ctrl-Shift-Left>', 'tab-move -', mode='normal')
config.bind('b', 'back', mode='normal')
config.bind('m', 'forward', mode='normal')
config.bind('t', 'set-cmd-text -s :open -t', mode='normal')
config.bind('<Ctrl-m>', 'set-cmd-text -s :quickmark-save', mode='normal')
config.bind('<Escape>', 'leave-mode', mode='passthrough')
config.bind('gi', 'enter-mode insert ;; jseval --quiet var inputs = document.getElementsByTagName("input"); for(var i = 0; i < inputs.length; i++) { var hidden = false; for(var j = 0; j < inputs[i].attributes.length; j++) { hidden = hidden || inputs[i].attributes[j].value.includes("hidden"); }; if(!hidden) { inputs[i].focus(); break; } }')
config.bind('<Ctrl-p>', 'jseval document.location=\'https://pinboard.in/add?next=same&url=\'+encodeURIComponent(location.href)+\'&title=\'+encodeURIComponent(document.title)', mode="normal")

# privacy
