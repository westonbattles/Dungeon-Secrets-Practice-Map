tag @e[type=interaction,tag=secret_interaction,tag=!uncollected] add uncollected
tag @e[type=interaction,tag=secret_interaction,tag=unlocked] add locked
tag @e[type=interaction,tag=secret_interaction,tag=unlocked] remove unlocked
tag @e[type=marker,tag=secret_marker,tag=!uncollected] add uncollected
execute as @e[type=interaction,tag=secret_interaction] run data remove entity @s interaction

function secrets:helper/reset_item_frames