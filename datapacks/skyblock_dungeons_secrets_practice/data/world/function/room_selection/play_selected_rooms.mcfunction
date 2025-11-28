execute if score #selected_count n matches 0 run return run function world:room_selection/no_room_selected

#randomize rooms
function world:misc/randomize_array/randomize {storage:"world:rooms",target_path:"selected"}

# we know we are playing selected rooms, not just regularly playing an individual room
scoreboard players set @s playing_selected_rooms 1


data modify storage world:room current_room set value 0

# play room in randomizd list at n[0]
function world:room_selection/play_next_room with storage world:room


