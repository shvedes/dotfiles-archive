#!/bin/bash
# https://github.com/shvedes/dotfiles

border='' \
center='' \
class=$2 \
desktop='' \
focus='' \
follow='' \
hidden='' \
id=${1?} \
instance=$3 \
layer='' \
locked='' \
manage='' \
marked='' \
misc=$4 \
monitor='' \
node='' \
private='' \
rectangle='' \
split_dir='' \
split_ratio='' \
state='' \
sticky='' \
urgent=

firefox() {}
gimp() {}
libreoffice() {}
mpv() {}
spotify() {}
telegram_desktop() {}
obs-studio() {}
thunderbird() {}
qbittorrent() {}
Code() {}

case $instance.$class in
    *.gimp-2.10) gimp ;;
    *.qbittorrent) qbittorrent ;;
    *.obs) obs-studio ;;
    *.Code) code ;;
    *.spotify) spotify ;;
    *.TelegramDesktop) telegram_desktop ;;
    *.[Ff]irefox) firefox ;;
    *.mpv) mpv ;;
    *.thunderbird) thunderbird ;;
    [lL]ibre[oO]ffice*) libreoffice ;;
    .)
        case $(exec ps -p "$(exec xdo pid "$id")" -o comm= 2>/dev/null) in
            spotify) spotify ;;
            *) exit 0 ;;
        esac
        ;;
esac

printf '%s ' \
    ${border:+"border=$border"} \
    ${center:+"center=$center"} \
    ${desktop:+"desktop=$desktop"} \
    ${focus:+"focus=$focus"} \
    ${follow:+"follow=$follow"} \
    ${hidden:+"hidden=$hidden"} \
    ${layer:+"layer=$layer"} \
    ${locked:+"locked=$locked"} \
    ${manage:+"manage=$manage"} \
    ${marked:+"marked=$marked"} \
    ${monitor:+"monitor=$monitor"} \
    ${node:+"node=$node"} \
    ${private:+"private=$private"} \
    ${rectangle:+"rectangle=$rectangle"} \
    ${split_dir:+"split_dir=$split_dir"} \
    ${split_ratio:+"split_ratio=$split_ratio"} \
    ${state:+"state=$state"} \
    ${sticky:+"sticky=$sticky"} \
    ${urgent:+"urgent=$urgent"}
