# Find minimum of three values and return which axis (0=X, 1=Y, 2=Z)
# Input: #tMaxX voxel.math, #tMaxY voxel.math, #tMaxZ voxel.math
# Output: #output voxel.math (0, 1, or 2)

# Start by assuming X is minimum
scoreboard players set #output voxel.math 0
scoreboard players operation #temp voxel.math = #tMaxX voxel.math

# Check if Y is smaller
execute if score #tMaxY voxel.math < #temp voxel.math run scoreboard players set #output voxel.math 1
execute if score #tMaxY voxel.math < #temp voxel.math run scoreboard players operation #temp voxel.math = #tMaxY voxel.math

# Check if Z is smaller
execute if score #tMaxZ voxel.math < #temp voxel.math run scoreboard players set #output voxel.math 2
