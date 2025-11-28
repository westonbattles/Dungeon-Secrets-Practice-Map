execute store result score #temp n run data get storage dungeon:current_room random_spawn

execute if score #temp n matches 0 run function world:restart_current_level
execute unless score #temp n matches 0 run function world:restart_current_level_random_variation