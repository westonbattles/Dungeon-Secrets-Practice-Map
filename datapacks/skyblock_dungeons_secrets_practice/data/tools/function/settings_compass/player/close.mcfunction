#clear the ui that is closing
execute at @s as @e[distance=..2,type=chest_minecart,tag=ui] run data remove entity @s Items

# kill the ui
kill @e[tag=ui]

scoreboard players reset @s ui.enabled
