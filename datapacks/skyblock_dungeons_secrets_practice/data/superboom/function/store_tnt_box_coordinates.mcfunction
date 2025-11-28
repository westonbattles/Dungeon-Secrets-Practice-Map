# creates and sets the surrounding box of the explosion's coordinates

execute store result score #tnt.box min_x run data get entity @s Pos[0]
execute store result score #tnt.box min_y run data get entity @s Pos[1]
execute store result score #tnt.box min_z run data get entity @s Pos[2]

scoreboard players operation #tnt.box max_x = #tnt.box min_x
scoreboard players operation #tnt.box max_y = #tnt.box min_y
scoreboard players operation #tnt.box max_z = #tnt.box min_z

scoreboard players add #tnt.box max_x 2
scoreboard players add #tnt.box max_y 2
scoreboard players add #tnt.box max_z 2
scoreboard players remove #tnt.box min_x 2
scoreboard players remove #tnt.box min_y 2
scoreboard players remove #tnt.box min_z 2