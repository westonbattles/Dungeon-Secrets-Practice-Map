#Setting up the raycasting data.

tag @s add etherwarpray
scoreboard players set #hit etherwarpcasttemp 0
scoreboard players set #distance etherwarpcasttemp 0

#Activating the raycast. This function will call itself until it is done.

function raycast_aote_etherwarp:ray

#Raycasting finished, removing tag from the raycaster.

tag @s remove etherwarpray