#Run a function if a block was successfully detected.
execute unless block ~ ~ ~ #tools:blocks run function tools:raycast/spirit_scepter/hit_block
scoreboard players add #distance spiritsceptercasttemp 1

# ray failed
execute if score #hit spiritsceptercasttemp matches 0 if score #distance spiritsceptercasttemp matches 570.. run function tools:raycast/spirit_scepter/failed

#Advance forward and run the ray again if no entity and/or block was found.

execute if score #hit spiritsceptercasttemp matches 0 if score #distance spiritsceptercasttemp matches ..570 positioned ^ ^ ^1 run function tools:raycast/spirit_scepter/ray