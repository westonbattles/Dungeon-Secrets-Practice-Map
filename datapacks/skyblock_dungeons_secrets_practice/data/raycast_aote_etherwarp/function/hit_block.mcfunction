#Mark the ray as having found a block.

scoreboard players set #hit etherwarpcasttemp 1

#Running custom commands since the block was found.

execute if block ~ ~1 ~ #raycast_aote_etherwarp:blocks if block ~ ~2 ~ #raycast_aote_etherwarp:blocks align xyz run tp @a[tag=etherwarpray,limit=1] ~.5 ~1 ~.5
execute if block ~ ~1 ~ #raycast_aote_etherwarp:blocks if block ~ ~2 ~ #raycast_aote_etherwarp:blocks as @a[tag=etherwarpray,limit=1] at @s run playsound minecraft:entity.ender_dragon.hurt ambient @s ~ ~ ~ 0.35 0.5