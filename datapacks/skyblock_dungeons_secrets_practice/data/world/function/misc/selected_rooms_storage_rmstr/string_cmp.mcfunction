#input: {room_to_remove:"Hello World", current_room:"Hello World!"}

# Compare function
$data modify storage world:temp compare set value "$(room_to_remove)"
$execute store success score #different n run data modify storage world:temp compare set value "$(current_room)"
#execute if score #different n matches 0 run say Text matches. 
#execute if score #different n matches 1 run say Text not matches.   
$execute if score #different n matches 0 run data remove storage world:rooms selected[$(n)]
#execute if score #different n matches 1 run say Text not matches.  