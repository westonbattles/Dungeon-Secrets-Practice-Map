#Mark the ray as having found a block.

scoreboard players set #hit etherwarpcasttemp 1

#Running custom commands since the block was found.

execute if block ~ ~1 ~ #raycast_aote_etherwarp:blocks if block ~ ~2 ~ #raycast_aote_etherwarp:blocks align xyz run tp @a[tag=etherwarpray,limit=1] ~.5 ~1 ~.5
execute if block ~ ~1 ~ #raycast_aote_etherwarp:blocks if block ~ ~2 ~ #raycast_aote_etherwarp:blocks run playsound minecraft:entity.enderman.teleport ambient @a[tag=etherwarpray,limit=1]