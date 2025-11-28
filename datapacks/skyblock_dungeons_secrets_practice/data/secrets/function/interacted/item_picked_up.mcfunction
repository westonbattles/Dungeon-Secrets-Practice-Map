# exectjed as item frame
tag @s remove uncollected

execute at @s as @n[distance=..1,type=item_frame] run data modify entity @s Item set value {id:"minecraft:lime_concrete"}

execute at @s run playsound minecraft:block.note_block.pling ambient @a ~ ~ ~ 10 1
execute at @s run particle minecraft:happy_villager ~ ~0.5 ~ 0.4 0.25 0.4 1 20 normal

execute as @p at @s run function secrets:interacted/add_to_secret_count

#summon item_frame ~ ~ ~ {Facing:1b,Tags:["secret_item","uncollected"],Item:{id:"minecraft:white_stained_glass",count:1}}