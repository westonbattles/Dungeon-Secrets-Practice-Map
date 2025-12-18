# if the player is trying to etherwarp when their face is in a block (when pearl+warp glitching thru 2 blocks), we'll use this function to not let that block be detected by our etherwarp raycast so we can successfully go through
execute align xyz positioned ~ ~-1 ~ unless entity @s[dx=1,dy=1,dz=1] run return 0
return 1
