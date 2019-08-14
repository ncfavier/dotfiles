color0='#080b12'
color1='#ff0f79'
color2='#25dca0'
color3='#ff0085'
color4='#00bcff'
color5='#ff00a5'
color6='#33afd9'
color7='#bbbbcc'
color8='#ccccdd'
color9='#ff9fe0'
color10='#25dca0'
color11='#ff0085'
color12='#00bcff'
color13='#ff0085'
color14='#336f99'
color15='#ffffff'

dark=0

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
rofi_font='DinaOTB 9'
firefox_font="${font@Q}, Biwidth"

border_color=$color0
border_width=1
window_gap=16
padding=16
