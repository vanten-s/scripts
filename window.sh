NAME=$(xprop -id $(bspc query -n focused -N) _NET_WM_NAME | sed 's/_NET_WM_NAME(UTF8_STRING) = //' | sed 's/"//g')

if [ -z $(bspc query -n focused -N) ];
then
    echo ''
    exit 1
fi

echo $NAME | python $HOME/scripts/scroll_text.py 23

