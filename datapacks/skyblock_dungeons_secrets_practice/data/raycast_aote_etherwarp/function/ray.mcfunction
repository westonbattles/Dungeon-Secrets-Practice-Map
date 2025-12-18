#Run a function if a block was successfully detected.
execute unless block ~ ~ ~ #raycast_aote_etherwarp:blocks unless function raycast_aote_etherwarp:player_in_block run function raycast_aote_etherwarp:hit_block
scoreboard players add #distance etherwarpcasttemp 1

#Advance forward and run the ray again if no entity and/or block was found.

execute if score #hit etherwarpcasttemp matches 0 if score #distance etherwarpcasttemp matches ..570 positioned ^ ^ ^0.1 run function raycast_aote_etherwarp:ray