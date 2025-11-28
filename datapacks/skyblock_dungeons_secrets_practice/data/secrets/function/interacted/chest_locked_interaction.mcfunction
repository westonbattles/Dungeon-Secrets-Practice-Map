execute as @p at @s run playsound minecraft:entity.enderman.teleport hostile @s ~ ~ ~ 1 0
tellraw @p {text:"That chest is locked!",color:"red"}