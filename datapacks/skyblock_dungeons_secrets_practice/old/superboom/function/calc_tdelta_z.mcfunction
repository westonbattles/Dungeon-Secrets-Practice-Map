# Calculate tDeltaZ (called only if dirZ is non-zero)
# tDeltaZ = 1.0 / abs(dirZ)

# #output already contains abs(dirZ) from the calling function
scoreboard players operation #dividend voxel.math = #1000 voxel.const
scoreboard players operation #divisor voxel.math = #output voxel.math
function voxel_math:divide
scoreboard players operation #tDeltaZ voxel.math = #output voxel.math
