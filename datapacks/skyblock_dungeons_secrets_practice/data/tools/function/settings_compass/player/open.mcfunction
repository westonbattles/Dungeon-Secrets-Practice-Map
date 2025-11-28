# summon the ui minecart stack
execute at @s run summon item_display ~ ~ ~ {view_range:0f,width:0f,height:0f,teleport_duration:0,Tags:["ui"],Passengers:[{id:"minecraft:chest_minecart",Invulnerable:1b,Tags:["ui"],Passengers:[{id:"minecraft:marker",Tags:["ui"]}],DisplayState:{Name:"minecraft:barrier"}}]}

scoreboard players set @s ui.enabled 1

# open initial page
execute at @s as @e[distance=..2,type=chest_minecart] run function tools:settings_compass/menu/settings_menu/open
execute at @s as @e[distance=..2,type=chest_minecart] run function tools:settings_compass/minecart/load_page