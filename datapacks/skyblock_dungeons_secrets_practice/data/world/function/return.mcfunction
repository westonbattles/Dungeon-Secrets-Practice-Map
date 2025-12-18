# Returns you to the lobby (whichever sub lobby you started from)
scoreboard players set @s moved 0
# will only be set if we are playing selected rooms
scoreboard players reset @s playing_selected_rooms
function world:timer/action_bar/stop
function world:timer/action_bar/hide

clear @s
loot give @s loot tools:aotv
#effect clear @s speed
function bossbar:hide
playsound entity.enderman.teleport ambient @s ~ ~ ~
$tp @s $(x) $(y) $(z) $(pitch) $(yaw)