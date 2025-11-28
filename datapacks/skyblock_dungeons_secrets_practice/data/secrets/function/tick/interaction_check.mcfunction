execute as @e[type=interaction,tag=secret_interaction,tag=uncollected] if data entity @s interaction at @s on target run function secrets:interacted/interacted
#execute as @e[type=interaction,tag=secret_interaction] at @s run data remove entity @s interaction

# secret item frame interaction type shit
execute at @p as @e[distance=..4,type=marker,tag=secret_marker,tag=item,tag=uncollected] run function secrets:interacted/item_picked_up

# goal marker
execute as @p unless score @s all_secrets_found matches 0 at @s as @e[distance=..2,type=marker,tag=goal_marker] run function secrets:all_secrets_found