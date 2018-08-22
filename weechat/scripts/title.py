# -*- coding: utf-8 -*-
import weechat

title_format = 'weechat'

def set_title(data, signal, signal_data):
    weechat.window_set_title(title_format)
    return weechat.WEECHAT_RC_OK

if weechat.register("title",
                    "Naïm Favier <fnaim42@gmail.com>",
                    "0.0", "",
                    "Set the terminal window's title dynamically",
                    "", ""):
    if weechat.config_is_set_plugin('title_format'):
        title_format = weechat.config_get_plugin('title_format')
    else:
        weechat.config_set_plugin('title_format', title_format)

    weechat.hook_signal('buffer_switch', 'set_title', '')
