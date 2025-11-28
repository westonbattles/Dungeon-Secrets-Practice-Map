# Save the coordinates of our first corner as the min and maximum coordinates of the entire crypt
execute store result score #crypt.box min_x run data get entity @s Pos[0]
execute store result score #crypt.box min_y run data get entity @s Pos[1]
execute store result score #crypt.box min_z run data get entity @s Pos[2]
scoreboard players operation #crypt.box max_x = #crypt.box min_x
scoreboard players operation #crypt.box max_y = #crypt.box min_y
scoreboard players operation #crypt.box max_z = #crypt.box min_z


# @s is the twin marker, position is the first marker
execute at @s as @e[tag=crypt_marker,distance=0.1..6] if score @s n = @n[distance=..1,tag=crypt_marker] n run function crypt:check_crypt_overlap