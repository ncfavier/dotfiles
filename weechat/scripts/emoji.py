# -*- coding: utf-8 -*-
import weechat
import os
import json
import re

replacements = {}

def emoji_cb(data, modifier, modifier_data, string):
    return re.sub('|'.join(map(re.escape, replacements.keys())),
                  lambda m: replacements[m.group(0)],
                  unicode(string, 'utf-8'))

if weechat.register("emoji",
                    "Naïm Favier <n@monade.li>",
                    "0.0", "",
                    "Replace emojis with their :text_codes: in incoming messages",
                    "", ""):
    emojis_path = ''
    if weechat.config_is_set_plugin('emojis_path'):
        emojis_path = weechat.config_get_plugin('emojis_path')
    else:
        weechat.config_set_plugin('emojis_path', emojis_path)

    with open(os.path.expanduser(emojis_path)) as f:
        emojis = json.loads(f.read())
        for code in emojis:
            replacements[emojis[code]['char']] = '\x02:%s:\x0f' % code

    for event in ('privmsg', 'notice', 'cprivmsg', 'cnotice', 'part', 'quit'):
        weechat.hook_modifier('irc_in_%s' % event, 'emoji_cb', '')
