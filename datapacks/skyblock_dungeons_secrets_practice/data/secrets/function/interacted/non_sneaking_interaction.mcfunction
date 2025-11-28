playsound minecraft:entity.enderman.teleport ambient @s ~ ~ ~ 10 0
setblock ~ ~ ~ red_concrete
#particle minecraft:angry_villager ~ ~0.5 ~ 0.5 0.5 0.5 10 10 normal
particle minecraft:dust{color:[1, 0, 0], scale:1} ~ ~ ~ 0.4 0.75 0.4 1 50
tellraw @s "sneak dude"