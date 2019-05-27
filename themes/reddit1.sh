color0='#051519'
color1='#f8818e'
color2='#92d3a2'
color3='#cbbd96'
color4='#8ed0ce'
color5='#5e468c'
color6='#31658c'
color7='#929292'
color8='#555555'
color9='#fb3d66'
color10='#6bb48d'
color11='#ffbb6f'
color12='#39a7a2'
color13='#7e62b3'
color14='#6096bf'
color15='#e2e2e2'

dark=0

if (( dark )); then
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

accent=$color10

font='xft:lucy tewi:pixelsize=10, xft:Biwidth:pixelsize=12, xft:Symbola:pixelsize=12'
bar_font=('lucy tewi:pixelsize=10' 'lucy tewi:bold:pixelsize=10' 'Biwidth:pixelsize=12' 'wuncon siji:pixelsize=10')

border_width=1
window_gap=16
padding=20
