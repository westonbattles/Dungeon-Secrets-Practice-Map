#Setting up the raycasting data.
tag @s add spiritscepterray
scoreboard players set #hit spiritsceptercasttemp 0
scoreboard players set #distance spiritsceptercasttemp 0

#Activating the raycast. This function will call itself until it is done.
function tools:raycast/spirit_scepter/ray

#Raycasting finished, removing tag from the raycaster.
tag @s remove spiritscepterray