color0='#121212'
color8='#404040'
color1='#d6334f'
color9='#d6334f'
color2='#eb386a'
color10='#eb386a'
color3='#db4a73'
color11='#db4a73'
color4='#cd6180'
color12='#cd6180'
color5='#ba5270'
color13='#cd6180'
color6='#c06680'
color14='#ba5270'
color7='#f2f3f4'
color15='#afafaf'

dark=1

if (( dark )); then
    color7='#525c5e'
    color8='#333333'
    background=$color0
    foreground=$color15
    background_alt=$color8
    foreground_alt=$color7
else
    background=$color15
    foreground=$color0
    background_alt=$color7
    foreground_alt=$color8
fi

font='Dina'
font_size=10

X_font="xft:$font:pixelsize=$font_size, xft:lucy tewi:10, xft:Biwidth:pixelsize=12, xft:Symbola:pixelsize=12"
bar_font=("$font:pixelsize=$font_size" "$font:bold:pixelsize=$font_size" "siji:pixelsize=10" "lucy tewi:pixelsize=10" "Biwidth:pixelsize=12")
firefox_font="${font@Q}, Biwidth"

border_color=$color0
border_width=1
window_gap=16
padding=16
