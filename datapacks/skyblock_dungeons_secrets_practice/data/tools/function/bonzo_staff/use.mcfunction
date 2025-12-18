execute store result score @s cooldown.bonzo_staff run time query gametime
scoreboard players add @s cooldown.bonzo_staff 5
schedule function tools:bonzo_staff/reset_cooldown 5t append

playsound minecraft:entity.ghast.warn ambient @s ~ ~ ~ .2 1.5
#playsound minecraft:entity.generic.explode ambient @s ~ ~ ~

execute as @p at @s anchored eyes positioned ^ ^ ^ anchored feet run function tools:raycast/bonzo_staff/start_ray