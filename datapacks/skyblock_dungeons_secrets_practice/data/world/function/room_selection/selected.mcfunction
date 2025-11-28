data remove entity @s interaction

execute if block ~ ~ ~ redstone_lamp[lit=false] run return run function world:room_selection/select
execute if block ~ ~ ~ redstone_lamp[lit=true] run return run function world:room_selection/deselect