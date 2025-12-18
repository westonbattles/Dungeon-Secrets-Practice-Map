#Setting up the raycasting data.
tag @s add bonzostaffray
scoreboard players set #hit bonzostaffcasttemp 0
scoreboard players set #distance bonzostaffcasttemp 0

#Activating the raycast. This function will call itself until it is done.
function tools:raycast/bonzo_staff/ray

#Raycasting finished, removing tag from the raycaster.
tag @s remove bonzostaffray