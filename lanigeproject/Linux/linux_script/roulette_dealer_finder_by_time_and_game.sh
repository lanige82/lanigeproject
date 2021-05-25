#!/bin/bash

$1==$BlackJack_Dealer

grep -e $2 0310_Dealer_schedule 0312_Dealer_schedule 0315_Dealer_schedule | awk '{sub(/_/," ")}1'| awk '{sub(/:/," ")}1' | awk '{sub(/:/," ")}1' | awk -F" " '{print $1, $3, $5, $6, $7}' | grep -e $4 | grep $3.


$1==$Roulette_Dealer 

 grep -e $2 0310_Dealer_schedule 0312_Dealer_schedule 0315_Dealer_schedule | awk '{sub(/_/," ")}1'| awk '{sub(/:/," ")}1' | awk '{sub(/:/," ")}1' | awk -F" " '{print $1, $3, $5, $8, $9}' | grep -e $4 | grep $3.



$1==$Texas_Hold 

grep -e $2 0310_Dealer_schedule 0312_Dealer_schedule 0315_Dealer_schedule | awk '{sub(/_/," ")}1'| awk '{sub(/:/," ")}1' | awk '{sub(/:/," ")}1' | awk -F" " '{print $1, $3, $5, $10, $11}' | grep -e $4 | grep $3.

