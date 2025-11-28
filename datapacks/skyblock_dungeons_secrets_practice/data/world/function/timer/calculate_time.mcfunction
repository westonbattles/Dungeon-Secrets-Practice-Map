# assumes @s start_time and end_time have already been set, store tick count in @s ticks
execute store result score @s ticks run scoreboard players operation @s end_time -= @s start_time

# save current room id to temp
data modify storage world:temp room_id set from storage dungeon:current_room room_id

# figure out if we have a pb
execute store result score #temp n run data get storage dungeon:current_room pb
execute if score @s ticks < #temp n run function world:timer/pb with storage world:temp

#print the time
function world:timer/print_time with storage world:temp
# free the memory i guess lmaoooo
data remove storage world:temp room_id


# RESULT ----
# player now has the updated scoreboard value
# ticks - ticks the run just took (we should store ticks in the room storage if it was a pb