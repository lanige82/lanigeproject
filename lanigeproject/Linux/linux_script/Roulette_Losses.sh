echo "Particular time of the day when losses occurred for March 10, 12, 15"
 cat 0310_win_loss_player_data 0312_win_loss_player_data 0315_win_loss_player_data | grep "\-"
 
echo "The No of times we experienced losses"
cat 0310_win_loss_player_data 0312_win_loss_player_data 0315_win_loss_player_data | grep "\-" | wc -l

echo "The person with the most occurence during losses"
 cat 0310_win_loss_player_data 0312_win_loss_player_data 0315_win_loss_player_data | grep "\-" | grep -i Mylie 

echo "The No of times the name occurred"
 cat 0310_win_loss_player_data 0312_win_loss_player_data 0315_win_loss_player_data | grep "\-" | grep -i Mylie | wc -l
 


