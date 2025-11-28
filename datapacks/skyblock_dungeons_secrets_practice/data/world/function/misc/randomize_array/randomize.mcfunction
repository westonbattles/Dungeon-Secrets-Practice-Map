#input: {storage: "world:temp", target_path: "selected"} maybe we can change this to one input?


data modify storage world:temp temp_array set value []

# scoreboard update so we dono't have to fuck with the og selected count
#execute store result score #rng_selected_rooms_remaining n run scoreboard players get #selected_count n

$data modify storage world:temp input set value {storage: "$(storage)", target_path: "$(target_path)"}
scoreboard players operation #temp n = #selected_count n
scoreboard players remove #temp n 1
execute store result storage world:temp input.n int 1 run scoreboard players get #temp n

# start selecting rooms one by one (randomly) from world:rooms, remove them and add them into world:rooms copy
function world:misc/randomize_array/loop with storage world:temp input

# after loop, set original array back from world:temp temp_array
$data modify storage $(storage) $(target_path) set from storage world:temp temp_array

# free memory
#data remove storage world:temp input
#data remove storage world:temp random_n
#data remove storage world:temp temp_array