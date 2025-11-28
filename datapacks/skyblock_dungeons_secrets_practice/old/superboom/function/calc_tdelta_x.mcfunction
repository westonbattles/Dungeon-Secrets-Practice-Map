# Calculate tDeltaX (called only if dirX is non-zero)
# tDeltaX = 1.0 / abs(dirX)

# #output already contains abs(dirX) from the calling function
scoreboard players operation #dividend voxel.math = #1000 voxel.const
scoreboard players operation #divisor voxel.math = #output voxel.math
function voxel_math:divide
scoreboard players operation #tDeltaX voxel.math = #output voxel.math
