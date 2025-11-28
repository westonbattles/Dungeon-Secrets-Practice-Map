# Sign function
# Input: #input voxel.math
# Output: #output voxel.math

# Assume 0
scoreboard players set #output voxel.math 0

# If the value is negative, set output to -1
execute if score #input voxel.math matches ..-1 run scoreboard players set #output voxel.math -1
# If the value is positive, set output to +1
execute if score #input voxel.math matches 1.. run scoreboard players set #output voxel.math 1
