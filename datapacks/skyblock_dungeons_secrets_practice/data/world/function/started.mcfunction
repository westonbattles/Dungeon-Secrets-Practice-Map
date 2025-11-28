scoreboard players set @s moved 0
data remove storage world:temp start_pos
function world:timer/action_bar/start
execute store result score @s start_time run time query gametime
