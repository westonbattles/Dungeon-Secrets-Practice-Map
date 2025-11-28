# Step to next voxel along Z axis

# Move to next voxel (add step direction: +1 or -1)
scoreboard players operation #voxZ voxel.math += #stepZ voxel.math

# Increment tMaxZ by tDeltaZ (move to next boundary)
scoreboard players operation #tMaxZ voxel.math += #tDeltaZ voxel.math
