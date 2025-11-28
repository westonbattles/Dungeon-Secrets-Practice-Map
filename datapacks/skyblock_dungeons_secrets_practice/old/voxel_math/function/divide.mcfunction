# Fixed-point division with scaling for precision
# Input: #dividend voxel.math, #divisor voxel.math
# Output: #output voxel.math (scaled by 1000)

# Scale up the dividend by 1000 for precision
scoreboard players operation #output voxel.math = #dividend voxel.math
scoreboard players operation #output voxel.math *= #1000 voxel.const

# Divide by the divisor
scoreboard players operation #output voxel.math /= #divisor voxel.math