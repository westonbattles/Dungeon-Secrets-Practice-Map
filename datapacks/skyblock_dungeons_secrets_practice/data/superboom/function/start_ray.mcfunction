#Setting up the raycasting data.

tag @s add tntray
scoreboard players set #hit tntcasttemp 0
scoreboard players set #distance tntcasttemp 0

#Activating the raycast. This function will call itself until it is done.

function superboom:ray

#Raycasting finished, removing tag from the raycaster.

tag @s remove tntray