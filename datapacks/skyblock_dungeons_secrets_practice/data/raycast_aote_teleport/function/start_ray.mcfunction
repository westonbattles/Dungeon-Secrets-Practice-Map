#Setting up the raycasting data.

tag @s add teleportray
scoreboard players set #hit teleportcasttemp 0
scoreboard players set #distance teleportcasttemp 0

#Activating the raycast. This function will call itself until it is done.

function raycast_aote_teleport:ray

#Running custom post-raycast commands.

playsound minecraft:entity.enderman.teleport ambient @a[tag=teleportray,limit=1]

#Raycasting finished, removing tag from the raycaster.

tag @s remove teleportray