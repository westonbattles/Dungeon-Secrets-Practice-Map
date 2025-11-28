# Stop the timer
function world:timer/action_bar/stop


# score of #temp n is now the total number of variations the current room has
execute store result score #temp n run data get storage dungeon:current_room variations
#-1 (so we can random roll from 0 - n-1)
scoreboard players remove #temp n 1

# dungeon:temp = {"room_id":"current_room_id", variation:"n-1"}
data modify storage dungeon:temp room_id set from storage dungeon:current_room room_id
execute store result storage dungeon:temp variation int 1 run scoreboard players get #temp n


# only perform random rollage if n >= 1
execute if score #temp n matches 1.. store result storage dungeon:temp variation int 1 run function world:variations/roll_random_variation with storage dungeon:temp

# finally, start the room with the variation we've randomized
execute run function world:start_variation with storage dungeon:temp