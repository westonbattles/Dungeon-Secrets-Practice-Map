# Found TNT! Break it and set flag

# Set found flag to stop the loop
scoreboard players set #foundTNT voxel.math 1

# Break the TNT block using coordinates from storage
function superboom:break_tnt with storage voxel:temp

# Optional: Add visual/audio feedback
playsound minecraft:entity.generic.explode block @a ~ ~ ~ 1 2
particle minecraft:explosion ~ ~ ~ 0.2 0.2 0.2 0 5
