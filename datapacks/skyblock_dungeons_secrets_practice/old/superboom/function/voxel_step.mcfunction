# DDA voxel traversal step
# This function runs recursively, stepping through voxels one at a time

# Increment and check iteration counter
scoreboard players add #iterations voxel.math 1
execute if score #iterations voxel.math > #maxIterations voxel.math run return fail

# Check current voxel for TNT
function superboom:check_tnt

# If TNT was found, stop (check_tnt will set #foundTNT to 1 and handle breaking)
execute if score #foundTNT voxel.math matches 1 run return run say Found TNT!

# Find which axis has minimum tMax (which boundary we hit next)
function voxel_math:min3

# Step to next voxel based on which axis was minimum
execute if score #output voxel.math matches 0 run function superboom:step_x
execute if score #output voxel.math matches 1 run function superboom:step_y
execute if score #output voxel.math matches 2 run function superboom:step_z

# Continue traversal (recursive call)
function superboom:voxel_step
