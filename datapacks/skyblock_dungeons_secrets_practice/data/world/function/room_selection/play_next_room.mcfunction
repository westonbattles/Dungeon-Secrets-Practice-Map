#input (world:rooms): {selected: [aas, asda, asdas], current_room:n}

# play room at n

# this is chopped
$function world:room_selection/get_room_from_index {n:$(current_room)}
function world:start with storage world:temp
function world:restart_current_level_handle_variation

# increase n in world:rooms storage
execute store result score #temp n run data get storage world:room current_room
scoreboard players add #temp n 1

# overflow to 0 if n increases past selected count-1
execute if score #temp n >= #selected_count n run scoreboard players set #temp n 0

# store shit
execute store result storage world:room current_room int 1 run scoreboard players get #temp n

