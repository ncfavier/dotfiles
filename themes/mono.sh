base0='#111111'
base1='#303030'
base2='#353535'
base3='#5A5A5A'
base4='#9292A2'
base5='#EEFFFF'
base6='#EEFFFF'
base7='#FFFFFF'
base8='#F07178'
base9='#F78C6C'
base10='#FDF200'
base11='#13CA91'
base12='#00EEFF'
base13='#7898FB'
base14='#FF0088'
base15='#FF5370'

color0=$base0
color1=$base14
color2=$base12
color3=$base14
color4=$base12
color5=$base14
color6=$base14
color7=$base7
color8=$base4
color9=$base14
color10=$base12
color11=$base14
color12=$base12
color13=$base14
color14=$base14
color15=$base7

dark=1

if (( dark )); then
    background=$color0
    foreground=$color15
    background_alt=$base3
    foreground_alt=$base4
else
    background=$color15
    foreground=$color0
    background_alt='#eeeeee'
    foreground_alt='#cccccc'
fi

font='Dina'
font_size=10

X_font="xft:$font:pixelsize=$font_size, xft:lucy tewi:10, xft:Biwidth:pixelsize=12, xft:Symbola:pixelsize=12"
bar_font=("$font:pixelsize=$font_size" "$font:bold:pixelsize=$font_size" "siji:pixelsize=10" "lucy tewi:pixelsize=10" "Biwidth:pixelsize=12")
rofi_font='DinaOTB 9'
firefox_font="'$font', Biwidth"

border_width=1
window_gap=16
padding=16
