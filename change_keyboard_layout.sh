#!/bin/bash
# Simply returns keyboard layout
# 2 letters, uppercase.

layouts=(us hu se)

layout_size=${#layouts[@]}

for (( i=0; i<${layout_size}; i++ ));
do
  if [[ $(setxkbmap -query | grep layout | awk '{print $2}') == ${layouts[$i]} ]]
  then
    export next_layout_index=$(( $i + 1 ))
    break
  fi
done
if [[ $next_layout_index == $layout_size ]]
then
  export next_layout_index=0
fi

echo $next_layout_index
echo ${layouts[$next_layout_index]}

setxkbmap ${layouts[$next_layout_index]}
