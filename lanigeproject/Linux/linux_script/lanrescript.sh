#!/bin/bash
name={lanre,tobi,enny}
echo "Enter your Name"
read name
if (( $name == 'lanre' || $name == 'tobi' )); then
echo "You are a winner"
else  
echo "You are a loser"
fi
