
# Initialize DDA voxel traversal for TNT detection
# Called when player places TNT
# Runs at player position, anchored to eyes

# Step 1: Get player's eye position (scaled by 1000 for precision)
# Note: @s Pos always returns feet position, even if execution is anchored to eyes
execute store result score #rayX voxel.math run data get entity @s Pos[0] 1000
execute store result score #rayY voxel.math run data get entity @s Pos[1] 1000
execute store result score #rayZ voxel.math run data get entity @s Pos[2] 1000

# Add eye height offset (1.62 blocks = 1620 when scaled by 1000)
scoreboard players add #rayY voxel.math 1620

# Step 2: Calculate ray direction using marker trick
summon marker ~ ~ ~ {Tags:["voxel.ray_dir"]}
execute at @s run tp @e[type=marker,tag=voxel.ray_dir,limit=1] ~ ~ ~ ~ ~

# Get start position
execute store result score #startX voxel.math run data get entity @s Pos[0] 1000
execute store result score #startY voxel.math run data get entity @s Pos[1] 1000
execute store result score #startZ voxel.math run data get entity @s Pos[2] 1000

# Move marker forward 1 block in look direction
execute as @e[type=marker,tag=voxel.ray_dir,limit=1] at @s positioned ^ ^ ^1 run tp @s ~ ~ ~

# Get end position
execute store result score #endX voxel.math run data get entity @e[type=marker,tag=voxel.ray_dir,limit=1] Pos[0] 1000
execute store result score #endY voxel.math run data get entity @e[type=marker,tag=voxel.ray_dir,limit=1] Pos[1] 1000
execute store result score #endZ voxel.math run data get entity @e[type=marker,tag=voxel.ray_dir,limit=1] Pos[2] 1000

# Calculate direction vector (scaled by 1000)
scoreboard players operation #dirX voxel.math = #endX voxel.math
scoreboard players operation #dirX voxel.math -= #startX voxel.math

scoreboard players operation #dirY voxel.math = #endY voxel.math
scoreboard players operation #dirY voxel.math -= #startY voxel.math

scoreboard players operation #dirZ voxel.math = #endZ voxel.math
scoreboard players operation #dirZ voxel.math -= #startZ voxel.math

# Clean up marker
kill @e[type=marker,tag=voxel.ray_dir]

# Step 3: Calculate starting voxel (integer block coordinates)
# Divide by 1000 to get block coords, then floor
scoreboard players operation #voxX voxel.math = #rayX voxel.math
scoreboard players operation #voxX voxel.math /= #1000 voxel.const

scoreboard players operation #voxY voxel.math = #rayY voxel.math
scoreboard players operation #voxY voxel.math /= #1000 voxel.const

scoreboard players operation #voxZ voxel.math = #rayZ voxel.math
scoreboard players operation #voxZ voxel.math /= #1000 voxel.const

# Step 4: Calculate step directions using sign function
scoreboard players operation #input voxel.math = #dirX voxel.math
function voxel_math:sign
scoreboard players operation #stepX voxel.math = #output voxel.math

scoreboard players operation #input voxel.math = #dirY voxel.math
function voxel_math:sign
scoreboard players operation #stepY voxel.math = #output voxel.math

scoreboard players operation #input voxel.math = #dirZ voxel.math
function voxel_math:sign
scoreboard players operation #stepZ voxel.math = #output voxel.math

# Step 5: Calculate initial tMax for each axis
# tMax = (next_boundary - ray_origin) / ray_direction
# This will be done in a separate function for clarity
function superboom:init_tmax

# Step 6: Calculate tDelta for each axis
# tDelta = 1.0 / abs(ray_direction)
# This will be done in a separate function for clarity
function superboom:init_tdelta

# Step 7: Initialize iteration counter (max 60 blocks for 6m range)
scoreboard players set #iterations voxel.math 0
scoreboard players set #maxIterations voxel.math 20

# Step 8: Start the traversal loop
function superboom:voxel_step
