playsound minecraft:entity.generic.explode block @a ~ ~ ~
particle minecraft:explosion ~ ~0.5 ~ 0.2 0.2 0.2 0 5
execute as @e[distance=..5, type=marker, tag=secret_marker, tag=bat, tag=uncollected] run function secrets:interacted/bat_killed