#only gets called if  player is within distance which we can check on hypixel later

# needs to be positioned where launch should take place 

# 15395 is good strentgh

# store players coordinates
# store bonzo location coordinates (located at our position)
# subtract bonzo coords from player coords to get direction vector pointing from bonzo impact to player

# store coords where the bonzo staff hit
execute store result score @s bonzo.launch_vector.x run data get entity @s Pos[0] 10000
execute store result score @s bonzo.launch_vector.z run data get entity @s Pos[2] 10000



# ssubtract off players coords from bonzo staff coords to get the launch vector
summon marker ~ ~ ~ {Tags:["temp"]}
execute as @n[type=marker,tag=temp,distance=..2] store result score #temp n run data get entity @s Pos[0] 10000
scoreboard players operation @s bonzo.launch_vector.x -= #temp n
execute as @n[type=marker,tag=temp,distance=..2] store result score #temp n run data get entity @s Pos[2] 10000
scoreboard players operation @s bonzo.launch_vector.z -= #temp n
kill @n[type=marker,tag=temp,distance=..2]

# get our launch vector magnitude
scoreboard players operation #dx distance = @s bonzo.launch_vector.x
scoreboard players set #dy distance 0
scoreboard players operation #dz distance = @s bonzo.launch_vector.z

# get abs of dx and dz
execute if score #dx distance matches ..-1 run scoreboard players operation #dx distance *= #-1 n
execute if score #dz distance matches ..-1 run scoreboard players operation #dz distance *= #-1 n

# calculate magnitude of bonzo launch vector (stored in #out distance)
function distance:start

# increase scale factor for division
scoreboard players operation @s bonzo.launch_vector.x *= #10000 n
scoreboard players operation @s bonzo.launch_vector.z *= #10000 n

# normalize by dividing x and y by the magnitude
scoreboard players operation @s bonzo.launch_vector.x /= #out distance
scoreboard players operation @s bonzo.launch_vector.z /= #out distance

#multiply by staff strength
execute store result score $x player_motion.api.launch run scoreboard players operation @s bonzo.launch_vector.x *= #strength n
scoreboard players set $y player_motion.api.launch 5600
execute store result score $z player_motion.api.launch run scoreboard players operation @s bonzo.launch_vector.z *= #strength n

# remove extra scaling again
scoreboard players operation $x player_motion.api.launch /= #10000 n
scoreboard players operation $z player_motion.api.launch /= #10000 n


function player_motion:api/launch_xyz