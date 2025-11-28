execute as @e[type=egg,limit=1] run function tools:reset_egg/egg_found

execute as @p run function tools:settings_compass/player/tick
execute at @p as @e[distance=..2,type=chest_minecart,tag=ui] run function tools:settings_compass/minecart/tick