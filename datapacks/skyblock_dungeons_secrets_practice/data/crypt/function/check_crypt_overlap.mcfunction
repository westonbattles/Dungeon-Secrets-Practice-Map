
# store second position coordiantes
execute store result score #crypt.box max_x run data get entity @s Pos[0]
execute store result score #crypt.box max_y run data get entity @s Pos[1]
execute store result score #crypt.box max_z run data get entity @s Pos[2]

# update min/max values accordingly
execute if score #crypt.box min_x > #crypt.box max_x run scoreboard players operation #crypt.box min_x >< #crypt.box max_x
execute if score #crypt.box min_y > #crypt.box max_y run scoreboard players operation #crypt.box min_y >< #crypt.box max_y
execute if score #crypt.box min_z > #crypt.box max_z run scoreboard players operation #crypt.box min_z >< #crypt.box max_z

# appreciate you goat https://stackoverflow.com/questions/20925818/algorithm-to-check-if-two-boxes-overlap#comment105022733_20925869
#isOverlapping = (x1min < x2max && x2min < x1max && y1min < y2max && y2min < y1max && z1min < z2max && z2min < z1max)
#execute if score #crypt.box min_x < #tnt.box max_x if score #tnt.box min_x < #crypt.box max_x if score #crypt.box min_y < #tnt.box max_y if score #tnt.box min_y < #crypt.box max_y if score #crypt.box min_z < #tnt.box max_z if score #tnt.box min_z < #crypt.box max_z run say CRYPT FOUNDDD
execute if score #crypt.box min_x <= #tnt.box max_x if score #tnt.box min_x <= #crypt.box max_x if score #crypt.box min_y <= #tnt.box max_y if score #tnt.box min_y <= #crypt.box max_y if score #crypt.box min_z <= #tnt.box max_z if score #tnt.box min_z <= #crypt.box max_z run function crypt:destroy_crypt