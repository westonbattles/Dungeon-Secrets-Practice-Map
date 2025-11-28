# Step to next voxel along Y axis

# Move to next voxel (add step direction: +1 or -1)
scoreboard players operation #voxY voxel.math += #stepY voxel.math

# Increment tMaxY by tDeltaY (move to next boundary)
scoreboard players operation #tMaxY voxel.math += #tDeltaY voxel.math
