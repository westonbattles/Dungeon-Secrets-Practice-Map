# remove ui elemets
clear @a *[custom_data~{ui_item:{}}]


# detect player putting items into ui
data modify storage ui in set from storage ui current
data remove storage ui in[{components:{"minecraft:custom_data":{ui_item:{}}}}]
# if there is an item saved, we need to give that item back to the player
execute if data storage ui in[0] run return run function tools:settings_compass/menu/on_input
# Using the insert trick to overwrite slots which have been changed.
data modify storage ui temp set from storage ui previous
data modify storage ui temp[].components."minecraft:custom_data" merge value {prev:1b}
data modify entity @s Items insert 0 from storage ui temp[]
data remove storage ui temp
data modify storage ui temp append from entity @s Items[{components:{"minecraft:custom_data":{prev:1b}}}]
data remove storage ui in
data modify storage ui in append from storage ui temp[{components:{"minecraft:custom_data":{ui_item:{}}}}]
# bandage to prevent blank spots from clicking
execute if data storage ui in[0].components."minecraft:custom_data".ui_item.empty run data remove storage ui in[0]
execute if data storage ui in[0] unless data storage ui in[1] run function tools:settings_compass/menu/on_click
# Update Page & History if nothing happened
function tools:settings_compass/menu/refresh

# remove any shift clicked ui items
#execute as @p run item replace entity @s player.cursor with minecraft:air
#execute as @p run clear @s *[custom_data~{components:{"minecraft:custom_data":{ui_item:{}}}}]
