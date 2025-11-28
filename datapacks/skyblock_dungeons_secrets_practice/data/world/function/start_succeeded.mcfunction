# Update bossbar to have properties aligned with the level
$function bossbar:update_properties with storage dungeon:$(room_id)

# Update current room storage
$data merge storage dungeon:current_room {"room_id":"$(room_id)"}
$data modify storage dungeon:current_room variations set from storage dungeon:$(room_id) variations
$data modify storage dungeon:current_room pb set from storage dungeon:$(room_id) pb

# Start the room (tp to start pos)
$function world:start/$(room_id)

# Fill players inventory
function world:misc/fill_inventory_from_chest with storage world:chest_location

# Make sure player has speed 2
effect give @s speed infinite 2 true

# Get ready to start player timers
scoreboard players reset @s moved
data modify storage world:temp start_pos set from entity @s Pos
#function world:timer/action_bar/stop
function world:timer/action_bar/reset
function world:timer/action_bar/show

# start checking 
# (hadneld in tick/movement_check
