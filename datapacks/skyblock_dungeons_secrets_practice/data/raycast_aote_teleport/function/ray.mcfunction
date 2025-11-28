#Run a function if a block was successfully detected.

execute unless block ~ ~ ~ #raycast_aote_teleport:blocks run function raycast_aote_teleport:hit_block
scoreboard players add #distance teleportcasttemp 1

#If the raycast failed, run a function with the custom commands.

execute if score #hit teleportcasttemp matches 0 if score #distance teleportcasttemp matches 81.. run function raycast_aote_teleport:failed

#Advance forward and run the ray again if no entity and/or block was found.

execute if score #hit teleportcasttemp matches 0 if score #distance teleportcasttemp matches ..120 positioned ^ ^ ^0.1 run function raycast_aote_teleport:ray