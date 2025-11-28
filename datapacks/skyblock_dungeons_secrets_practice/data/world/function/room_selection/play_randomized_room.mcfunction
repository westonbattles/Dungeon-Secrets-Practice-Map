# selected_count: n
$execute store result storage world:temp n int 1 run random value 0..$(selected_count) 
# sets room_id in world:temp based on index
function world:room_selection/get_room_from_index with storage world:temp
function world:start with storage world:temp