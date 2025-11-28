execute as @n[distance=..0.5, type=interaction] run function secrets:interacted/handle_secret_tags

execute if entity @n[distance=..0.5,type=interaction,tag=chest, tag=!locked] run function secrets:interacted/chest_interaction
execute if entity @n[distance=..0.5,type=interaction,tag=chest, tag=locked] run function secrets:interacted/chest_locked_interaction
execute if entity @n[distance=..0.5,type=interaction,tag=lever] run function secrets:interacted/lever_interaction
execute if entity @n[distance=..0.5, type=interaction,tag=essence] run function secrets:interacted/essence_interaction

execute unless entity @n[distance=..0.5,type=interaction,tag=lever] unless entity @n[distance=..0.5,type=interaction,tag=locked] run function secrets:interacted/add_to_secret_count