execute as @p at @s run playsound minecraft:block.anvil.use ambient @s ~ ~ ~ .7 2
tellraw @p {text:"You hear the sound of somthing opening...",color:"red"}
execute as @e[type=interaction,tag=chest,tag=locked] run function secrets:interacted/update_locked_chest_tags