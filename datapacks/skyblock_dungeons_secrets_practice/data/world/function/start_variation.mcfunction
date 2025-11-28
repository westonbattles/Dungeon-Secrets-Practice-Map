# input: {"room_id":"1x1_example","variation":0}


# try to reset the room first
#$execute if function world:try_reset run return run function world:start_succeeded {"room_id":"$(room_id)"}
$execute unless function world:reset/$(room_id) run return run function #world:change_variation_start_and_reset {"room_id":"$(room_id)","variation":$(variation)}
# if we can't reset the world, it doens't exist so return 0
$tellraw @s {"text":"room '$(room_id)' not found :(","color":"gray"}
return 0
