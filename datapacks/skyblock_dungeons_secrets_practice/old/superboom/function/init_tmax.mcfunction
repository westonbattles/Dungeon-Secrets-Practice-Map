# Calculate initial tMax values for each axis
# tMax = distance along ray to next voxel boundary on that axis
# If direction is 0 on an axis, set tMax to infinity (never crosses that boundary)

# X axis tMax
execute if score #dirX voxel.math matches 0 run scoreboard players set #tMaxX voxel.math 2147483647
execute unless score #dirX voxel.math matches 0 run function superboom:calc_tmax_x

# Y axis tMax
execute if score #dirY voxel.math matches 0 run scoreboard players set #tMaxY voxel.math 2147483647
execute unless score #dirY voxel.math matches 0 run function superboom:calc_tmax_y

# Z axis tMax
execute if score #dirZ voxel.math matches 0 run scoreboard players set #tMaxZ voxel.math 2147483647
execute unless score #dirZ voxel.math matches 0 run function superboom:calc_tmax_z
