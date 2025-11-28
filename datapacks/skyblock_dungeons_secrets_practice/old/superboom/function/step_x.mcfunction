# Step to next voxel along X axis

# Move to next voxel (add step direction: +1 or -1)
scoreboard players operation #voxX voxel.math += #stepX voxel.math

# Increment tMaxX by tDeltaX (move to next boundary)
scoreboard players operation #tMaxX voxel.math += #tDeltaX voxel.math
