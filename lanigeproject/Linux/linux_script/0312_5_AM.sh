#!/bin/bash
grep -e 05 0310_Dealer_schedule 0312_Dealer_schedule 0315_Dealer_schedule | awk '{sub(/_/," ")}1'| awk '{sub(/:/," ")}1' | awk '{sub(/:/," ")}1' | awk -F" " '{print $1, $3, $5, $8, $9}' | grep -e 0312 | grep AM
