# TODO: packages
# TODO: dependencies
# TODO: combine rules

#
# Machines
#

.PHONY: here
here: $(shell hostname)

.PHONY: turing
turing: all

.PHONY: curry
curry: all

.PHONY: ritchie
ritchie: login bash ascii scripts misc vim git yay

#
# Meta-bundles
#

all: themes login bash ascii scripts misc vim git weechat mpd x redshift compton fcitx fontconfig bspwm dunst feh mpv pcmanfm gtk firefox df yay

#
# Bundles
#

# themes

.PHONY: themes
themes: ~/.theme

~/.theme: themes/current
	install -Dm 644 $< $@

# login

.PHONY: login
login: ~/.bash_profile ~/.hushlogin

~/.%: login/%
	install -Dm 644 $< $@

~/.hushlogin:
	touch $@

# bash

.PHONY: bash
bash: ~/.bashrc ~/.bash_aliases ~/.bash_functions ~/.inputrc

~/.%: bash/%
	install -Dm 644 $< $@

# ascii

.PHONY: ascii
ascii: $(patsubst ascii/%, ~/.ascii/%, $(wildcard ascii/*))

~/.ascii/%: ascii/%
	install -Dm 644 $< $@

# scripts

.PHONY: scripts
scripts: $(patsubst scripts/%, ~/.bin/%, $(wildcard scripts/*)) ~/.local/share/emojis.json

~/.bin/%: scripts/%
	install -Dm 755 $< $@

~/.local/share/emojis.json:
	cd $(dir $@) && curl -fLO https://raw.githubusercontent.com/muan/emojilib/master/emojis.json

# misc

.PHONY: misc
misc: ~/.nanorc ~/.toprc

~/.%: misc/%
	install -Dm 644 $< $@

# vim

.PHONY: vim
vim: ~/.vimrc

~/.%: vim/%
	install -Dm 644 $< $@

# git

.PHONY: git
git: ~/.gitconfig

~/.%: git/%
	install -Dm 644 $< $@

# weechat

.PHONY: weechat
weechat: $(addprefix ~/.weechat/, $(addsuffix .conf, alias autosort buflist charset exec fifo fset irc \
													 logger plugins relay script trigger weechat) \
		 script.list python/emoji.py python/title.py python/spurdo.py) \
		 ~/.local/share/emojis.json

~/.weechat/%: weechat/%
	install -Dm 644 $< $@

~/.weechat/python/%: weechat/scripts/%
	install -Dm 644 $< $@
	mkdir -p ~/.weechat/python/autoload && ln -rsf $@ ~/.weechat/python/autoload/$*

# mpd

.PHONY: mpd
mpd: ~/.config/mpd/mpd.conf

~/.config/mpd/%: mpd/%
	install -Dm 644 $< $@

# x

.PHONY: x
x: ~/.xinitrc ~/.XCompose ~/.Xmodmap ~/.Xresources

~/.%: x/%
	install -Dm 644 $< $@

# redshift

.PHONY: redshift
redshift: ~/.config/redshift.conf

~/.config/%: redshift/%
	install -Dm 644 $< $@

# compton

.PHONY: compton
compton: ~/.config/compton.conf

~/.config/%: compton/%
	install -Dm 644 $< $@

# fcitx

.PHONY: fcitx
fcitx: ~/.config/fcitx/config

~/.config/fcitx/%: fcitx/%
	install -Dm 644 $< $@

# fontconfig

.PHONY: fontconfig
fontconfig: ~/.config/fontconfig/fonts.conf

~/.config/fontconfig/%: fontconfig/%
	install -Dm 644 $< $@

# bspwm

.PHONY: bspwm
bspwm: $(addprefix ~/.config/, bspwm/bspwmrc bspwm/rules sxhkd/sxhkdrc)

~/.config/bspwm/%: bspwm/%
	install -Dm 755 $< $@

~/.config/sxhkd/%: bspwm/%
	install -Dm 644 $< $@

# dunst

.PHONY: dunst
dunst: ~/.config/dunst/dunstrc

~/.config/dunst/dunstrc: dunst/dunstrc
	install -Dm 644 $< $@

# feh

.PHONY: feh
feh: $(addprefix ~/.config/feh/, buttons keys)

~/.config/feh/%: feh/%
	install -Dm 644 $< $@

# mpv

.PHONY: mpv
mpv: $(addprefix ~/.config/mpv/, mpv.conf scripts/autoload.lua)

~/.config/mpv/%: mpv/%
	install -Dm 644 $< $@

# pcmanfm

.PHONY: pcmanfm
pcmanfm: ~/.config/pcmanfm/default/pcmanfm.conf ~/.config/libfm/libfm.conf

~/.config/pcmanfm/default/%: pcmanfm/%
	install -Dm 644 $< $@

~/.config/libfm/%: pcmanfm/%
	install -Dm 644 $< $@

# xdg

xdg: $(addprefix ~/.config/, user-dirs.dirs user-dirs.locale mimeapps.list) \
	 $(addprefix ~/.local/share/applications/, pcmanfm.desktop userapp-img.desktop userapp-vim.desktop) \
	 $(addprefix ~/.local/share/thumbnailers/, ffmpegthumbnailer.thumbnailer imagemagick-pdf.thumbnailer)

~/.config/%: xdg/%
	install -Dm 644 $< $@

~/.local/share/applications/%: xdg/applications/%
	install -Dm 644 $< $@

~/.local/share/thumbnailers/%: xdg/thumbnailers/%
	install -Dm 644 $< $@

# gtk

.PHONY: gtk
gtk: ~/.gtkrc-2.0 $(addprefix ~/.config/gtk-3.0/, settings.ini bookmarks)

~/.%: gtk/%
	install -Dm 644 $< $@

~/.config/gtk-3.0/%: gtk/gtk3/%
	install -Dm 644 $< $@

# firefox

.PHONY: firefox
firefox: $(addprefix ~/.mozilla/firefox/, profiles.ini default/user.js \
										  default/chrome/userChrome.css \
										  default/chrome/userContent.css)

~/.mozilla/firefox/%: firefox/%
	install -Dm 644 $< $@

~/.mozilla/firefox/default/%: firefox/%
	install -Dm 644 $< $@

~/.mozilla/firefox/default/chrome/%: firefox/%
	install -Dm 644 $< $@

# df

.PHONY: df
df: $(addprefix ~/.dwarffortress/data/init/, init.txt d_init.txt colors.txt)

~/.dwarffortress/data/init/%: df/%
	install -Dm 644 $< $@

# yay

.PHONY: yay
yay: ~/.config/yay/config.json

~/.config/yay/%: yay/%
	install -Dm 644 $< $@

#
# Miscellaneous
#

%:: %.template scripts/templum themes/current
	scripts/templum -s themes/current -o $@ $<
