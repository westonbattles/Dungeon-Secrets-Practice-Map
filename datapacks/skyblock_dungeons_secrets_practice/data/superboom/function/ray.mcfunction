#Run a function if a block was successfully detected.

execute unless block ~ ~ ~ #superboom:blocks run function superboom:hit_block
scoreboard players add #distance tntcasttemp 1

#If the raycast failed, run a function with the custom commands.

execute if score #hit tntcasttemp matches 0 if score #distance tntcasttemp matches 25.. run function superboom:failed

#Advance forward and run the ray again if no entity and/or block was found.

execute if score #hit tntcasttemp matches 0 if score #distance tntcasttemp matches ..24 positioned ^ ^ ^0.25 run function superboom:ray