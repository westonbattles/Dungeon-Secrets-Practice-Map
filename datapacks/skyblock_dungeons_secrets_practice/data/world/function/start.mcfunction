# input: {"room_id":"1x1_example"}

# try to reset the room first
#$execute if function world:try_reset run return run function world:start_succeeded {"room_id":"$(room_id)"}
#$execute unless function world:reset/$(room_id) run return run function #world:start_and_reset {"room_id":"$(room_id)"}

$data modify storage world:temp room_id set value "$(room_id)"
$data modify storage world:temp variation set from storage dungeon:$(room_id) variation

$execute unless function world:reset/$(room_id) run return run function #world:change_variation_start_and_reset with storage world:temp
# if we can't reset the world, it doens't exist so return 0
$tellraw @s {"text":"room '$(room_id)' not found :(","color":"gray"}
return 0
