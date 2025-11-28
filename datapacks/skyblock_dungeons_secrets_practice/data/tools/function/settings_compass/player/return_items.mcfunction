# return if we shouldn't loop anymore
$execute unless data storage ui in[$(index)] run return 1

# otherwise, give player the item and loop with index + 1
$function tools:settings_compass/player/give_item with storage ui in[$(index)]

scoreboard players add #temp n 1
execute store result storage world:temp index int 1 run scoreboard players get #temp n
function tools:settings_compass/player/return_items with storage world:temp