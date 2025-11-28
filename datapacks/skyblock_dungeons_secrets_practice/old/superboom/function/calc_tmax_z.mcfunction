# Calculate tMaxZ (only called if dirZ is non-zero)
# tMaxZ = (next_boundary - ray_origin) / ray_direction

# Find next boundary coordinate (in block coords)
scoreboard players operation #temp voxel.math = #voxZ voxel.math

# If stepping positive, next boundary is current block + 1
# If stepping negative, next boundary is current block
execute if score #stepZ voxel.math matches 1 run scoreboard players add #temp voxel.math 1

# Convert block coord to scaled coord (multiply by 1000)
scoreboard players operation #temp voxel.math *= #1000 voxel.const

# Calculate distance to boundary: (boundary - rayOrigin)
scoreboard players operation #temp voxel.math -= #rayZ voxel.math

# Divide by direction to get tMax
scoreboard players operation #dividend voxel.math = #temp voxel.math
scoreboard players operation #divisor voxel.math = #dirZ voxel.math
function voxel_math:divide

# Store result
scoreboard players operation #tMaxZ voxel.math = #output voxel.math
