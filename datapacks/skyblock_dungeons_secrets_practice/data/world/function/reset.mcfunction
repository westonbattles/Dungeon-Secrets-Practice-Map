$execute unless function world:reset/$(room_id) run return run function world:reset_succeeded
#$execute if function world:reset/$(room_id) run return 1
$tellraw @s {"text":"room '$(room_id)' not found :(","color":"gray"}
return 0