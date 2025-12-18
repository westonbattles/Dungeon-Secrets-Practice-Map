#Run a function if a block was successfully detected.
execute unless block ~ ~ ~ #tools:blocks run function tools:raycast/bonzo_staff/hit_block
scoreboard players add #distance bonzostaffcasttemp 1

# ray failed
execute if score #hit bonzostaffcasttemp matches 0 if score #distance bonzostaffcasttemp matches 30.. run function tools:raycast/bonzo_staff/failed

#Advance forward and run the ray again if no entity and/or block was found.
execute if score #hit bonzostaffcasttemp matches 0 if score #distance bonzostaffcasttemp matches ..30 positioned ^ ^ ^.1 run function tools:raycast/bonzo_staff/ray