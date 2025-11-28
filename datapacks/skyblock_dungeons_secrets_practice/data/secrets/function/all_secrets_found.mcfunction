scoreboard players set @p all_secrets_found 0

# time calcs
execute store result score @p end_time run time query gametime
execute as @p run function world:timer/calculate_time

# we have to reset selected rooms (really jank but who cares, basically starts a random room, and then resets it (starts it again) with random variations handled lmaooo
execute as @p if score @s playing_selected_rooms matches 0.. run function world:room_selection/play_next_room with storage world:room

# reset if need to reset, variation if need to variation
execute as @p run function world:restart_current_level_handle_variation

execute as @p at @s run playsound entity.player.levelup
function world:timer/action_bar/stop

