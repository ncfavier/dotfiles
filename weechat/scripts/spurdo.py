# -*- coding: utf-8 -*-
import weechat
import urllib
import json

def spurdo(data, buf, args):
    url = 'https://spurdo.pste.pw/api?%s' % urllib.urlencode({'text': args})
    response = json.loads(urllib.urlopen(url).read())
    if response['status'] == 0:
        weechat.command(buf, response['text'])
    return weechat.WEECHAT_RC_OK

if weechat.register("spurdo",
                    "Naïm Favier <fnaim42@gmail.com>",
                    "0.0", "",
                    "Spurdoify text",
                    "", ""):
    weechat.hook_command('spurdo', "Spurdoify text", "text", "text: the text to spurdoify", '', 'spurdo', '')
