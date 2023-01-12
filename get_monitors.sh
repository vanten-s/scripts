
i=1

while bspc query -m -M "^$i" &> /dev/null
do
    echo $i
    ((i++))
done

