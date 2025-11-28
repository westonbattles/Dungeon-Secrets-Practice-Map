data modify storage ui mask set from storage ui current
execute on passengers run data modify storage world:temp mask set from entity @s data.page.mask
data modify storage world:temp current_room set from storage dungeon:current_room room_id
execute on passengers run function tools:settings_compass/menu/get_mask with storage world:temp
data modify storage ui current set from storage ui mask
data remove storage world:temp mask
data remove storage world:temp current_room

function tools:settings_compass/minecart/load_page