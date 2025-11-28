execute unless score @s ui.enabled matches 0.. run function tools:settings_compass/player/open

execute at @s as @e[distance=..2,type=item_display,tag=ui] run tp @s ~ ~1 ~