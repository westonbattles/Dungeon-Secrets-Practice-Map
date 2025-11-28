# Check if current voxel contains TNT
# Uses voxel coordinates (#voxX, #voxY, #voxZ) to check the block

# Initialize found flag to 0 (not found)
scoreboard players set #foundTNT voxel.math 0

# Store coordinates in storage for macro usage
execute store result storage voxel:temp x int 1 run scoreboard players get #voxX voxel.math
execute store result storage voxel:temp y int 1 run scoreboard players get #voxY voxel.math
execute store result storage voxel:temp z int 1 run scoreboard players get #voxZ voxel.math

# Check if block at this position is TNT (using macro)
function superboom:check_tnt_at_coords with storage voxel:temp
