#                  __
#                 /\ \__
#      __   __  __\ \ ,_\    __
#    /'__`\/\ \/\ \\ \ \/  /'__`\
#   /\ \L\ \ \ \_\ \\ \ \_/\  __/
#   \ \___, \ \____/ \ \__\ \____\
#    \/___/\ \/___/   \/__/\/____/
#         \ \_\
#          \/_/

config.load_autoconfig()
c.qt.force_software_rendering = "chromium"
c.downloads.location.directory = "~/load"
c.editor.command = [ "alacritty", "-e", "nvim", "{}" ]
c.editor.encoding = "utf-8"

c.url.searchengines = {
        "DEFAULT" : "https://ya.ru/search/?text={}",
        "ddg" : "https://duckduckgo.com/?q={}",
        "aur" : "https://aur.archlinux.org/packages/?O=0&K={}",
}

c.url.start_pages = [ "ya.ru" ]

c.fonts.completion.entry = "12px iosevka"
c.fonts.completion.category = "12px iosevka"
c.fonts.debug_console = "12px iosevka"
c.fonts.downloads = "12px iosevka"
c.fonts.hints = "12px iosevka"
c.fonts.keyhint = "12px iosevka"
c.fonts.messages.info = "12px iosevka"
c.fonts.messages.error = "12px iosevka"
c.fonts.prompts = "12px iosevka"
c.fonts.statusbar = "12px iosevka"

c.tabs.padding = {"bottom" : 5, "top" : 5, "left" : 5, "right" : 5 }
c.tabs.last_close = "startpage"

# various shortcuts
config.bind("ec", "config-edit")
config.bind("em", 'spawn mpv {url}')
config.bind("eM", 'hint links spawn mpv {hint-url}')

# spawn qute-pass
config.bind("<Ctrl-l>a", "spawn --userscript qute-pass -d dmenu")
config.bind('<Ctrl-l>u', 'spawn --userscript qute-pass -d dmenu --username-only')
config.bind('<Ctrl-l>p', 'spawn --userscript qute-pass -d dmenu --password-only')

# quick subreddit open
config.bind("<Ctrl-r>", "set-cmd-text :open old.reddit.com/r/")
config.bind("<Ctrl-Shift-r>", "set-cmd-text :open -t old.reddit.com/r/")
config.bind("<Ctrl-c>", "set-cmd-text :open https://en.cppreference.com/w/cpp/")
config.bind("<Ctrl-Shift-c>", "set-cmd-text :open -t https://en.cppreference.com/w/cpp/")

# quick buku add bookmark
config.bind("gm", "set-cmd-text :spawn buku -a {url}")

# quick marks a'la pentadactyl
qsites = {
        'a': 'github.com',
        #'b': '',
        #'c': '',
        'd': 'deepl.com',
        #'e': '',
        #'f': '',
        'g': 'gmail.com',
        #'h': 'filmweb.pl',
        #'i': 'imdb.com',
        #'j': 'linuxjournal.com',
        #'k': 'lkml.org',
        'l': 'gnome-look.org',
        'm': 'gomolog.ru',
        #'n': 'nofluffjobs.com',
        #'o': 'maps.openrouteservice.org',
        'p': 'ru.pinterest.com',
        #'q': 'gcc.godbolt.org',
        'r': 'reddit.com',
        #'s': 'google.com',
        't': 'translate.google.com',
        #'u': 'trojmiasto.pl',
        'v': 'vim.vikia.com',
        'w': 'wiki.archlinux.org',
        'x': 'ya.ru',
        'y': 'youtube.com',
        'z': 'gdz.ru' }
for k,v in qsites.items():
        config.bind("gc" + k, 'open ' + v)
        config.bind("gn" + k, 'open -t ' + v)

# colors

config.source("color.py")