#Commands to run when the raycast has failed to detect an entity and/or block.

execute if block ~ ~-1.6 ~ #raycast_aote_teleport:blocks run tp @a[tag=teleportray,limit=1] ~ ~-1.6 ~
execute unless block ~ ~-1.6 ~ #raycast_aote_teleport:blocks store result score @s aote_y run data get entity @s Pos[1]
execute unless block ~ ~-1.6 ~ #raycast_aote_teleport:blocks run tp ~ ~ ~
execute unless block ~ ~-1.6 ~ #raycast_aote_teleport:blocks store result entity @s Pos[1] double 1 run scoreboard players get @s aote_y
