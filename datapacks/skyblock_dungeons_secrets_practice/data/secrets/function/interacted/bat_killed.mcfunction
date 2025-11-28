# positioned at explosion, command executed as bat marker
tag @s remove uncollected
execute at @s run playsound minecraft:block.note_block.pling ambient @a ~ ~ ~ 10 1
execute at @s run setblock ~ ~ ~ lime_concrete
execute at @s run particle minecraft:happy_villager ~ ~0.5 ~ 0.4 0.5 0.4 1 50 normal

execute as @p at @s run function secrets:interacted/add_to_secret_count