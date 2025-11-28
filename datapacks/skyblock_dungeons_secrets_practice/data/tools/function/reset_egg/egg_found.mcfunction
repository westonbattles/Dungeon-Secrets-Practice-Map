# check if we need to resetart random variation or regular
stopsound @p player minecraft:entity.egg.throw
execute as @p run function world:restart_current_level_handle_variation
execute at @p run playsound entity.egg.throw player @p ~ ~ ~ 1 0

kill