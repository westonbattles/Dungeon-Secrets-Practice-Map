execute store result score @s cooldown.spirit_scepter run time query gametime
scoreboard players add @s cooldown.spirit_scepter 10
schedule function tools:spirit_scepter/reset_cooldown 10t append

playsound minecraft:entity.ghast.shoot ambient @s ~ ~ ~
#playsound minecraft:entity.generic.explode ambient @s ~ ~ ~

execute as @p at @s anchored eyes positioned ^ ^ ^ anchored feet run function tools:raycast/spirit_scepter/start_ray