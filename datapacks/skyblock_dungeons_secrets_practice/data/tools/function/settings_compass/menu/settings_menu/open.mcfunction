function world:variations/store_variation_in_temp with storage dungeon:current_room
function tools:settings_compass/menu/settings_menu/mask with storage world:temp
data remove storage world:temp variation
data modify storage ui current set from storage ui mask
execute on passengers run data modify entity @s data.page.mask set value "function tools:settings_compass/menu/settings_menu/mask"