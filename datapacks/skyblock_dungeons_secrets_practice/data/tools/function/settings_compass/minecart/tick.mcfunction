# make a copy of current Items
data modify storage ui current set from entity @s Items

# obtain previous tick items
execute on passengers run data modify storage ui previous set from entity @s data.previous
execute on passengers store result score #bool ui run data modify entity @s data.previous set from storage ui current

execute if score #bool ui matches 1 run function tools:settings_compass/minecart/on_change