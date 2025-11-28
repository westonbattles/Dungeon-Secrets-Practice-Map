# Calculate tDelta values for each axis
# tDelta = how much t increases when crossing one voxel on that axis
# tDelta = 1.0 / abs(ray_direction)
# If direction is 0, set to infinity (ray never crosses that axis)

# X axis tDelta
scoreboard players operation #input voxel.math = #dirX voxel.math
function voxel_math:abs
execute if score #output voxel.math matches 0 run scoreboard players set #tDeltaX voxel.math 2147483647
execute if score #output voxel.math matches 1.. run function superboom:calc_tdelta_x

# Y axis tDelta
scoreboard players operation #input voxel.math = #dirY voxel.math
function voxel_math:abs
execute if score #output voxel.math matches 0 run scoreboard players set #tDeltaY voxel.math 2147483647
execute if score #output voxel.math matches 1.. run function superboom:calc_tdelta_y

# Z axis tDelta
scoreboard players operation #input voxel.math = #dirZ voxel.math
function voxel_math:abs
execute if score #output voxel.math matches 0 run scoreboard players set #tDeltaZ voxel.math 2147483647
execute if score #output voxel.math matches 1.. run function superboom:calc_tdelta_z
