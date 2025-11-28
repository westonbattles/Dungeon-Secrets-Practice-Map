execute store result storage crypt:box coordiantes.x_min int 1 run scoreboard players get #crypt.box min_x
execute store result storage crypt:box coordiantes.y_min int 1 run scoreboard players get #crypt.box min_y
execute store result storage crypt:box coordiantes.z_min int 1 run scoreboard players get #crypt.box min_z
execute store result storage crypt:box coordiantes.x_max int 1 run scoreboard players get #crypt.box max_x
execute store result storage crypt:box coordiantes.y_max int 1 run scoreboard players get #crypt.box max_y
execute store result storage crypt:box coordiantes.z_max int 1 run scoreboard players get #crypt.box max_z

function crypt:fill_crypt with storage crypt:box coordiantes

# say DESTROYED CRYPT