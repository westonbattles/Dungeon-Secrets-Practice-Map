# Calculate tDeltaY (called only if dirY is non-zero)
# tDeltaY = 1.0 / abs(dirY)

# #output already contains abs(dirY) from the calling function
scoreboard players operation #dividend voxel.math = #1000 voxel.const
scoreboard players operation #divisor voxel.math = #output voxel.math
function voxel_math:divide
scoreboard players operation #tDeltaY voxel.math = #output voxel.math
