# Absolute value function
# Input: #input voxel.math
# Output: #output voxel.math

# Copy input to output
scoreboard players operation #output voxel.math = #input voxel.math

# If the value is negative, multiply by -1
execute if score #input voxel.math matches ..-1 run scoreboard players operation #output voxel.math *= #-1 voxel.const
