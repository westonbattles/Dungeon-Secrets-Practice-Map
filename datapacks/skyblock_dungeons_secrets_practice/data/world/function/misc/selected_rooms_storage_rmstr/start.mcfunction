#input {room_to_remove:"string"}

# we need both a scoreboard and a storage representation for n to be used as a macro AND to increase
scoreboard players set #temp n 0
execute store result storage world:temp n int 1 run scoreboard players get #temp n
$data modify storage world:temp room_to_remove set value "$(room_to_remove)"

# loop over all values in storage
function world:misc/selected_rooms_storage_rmstr/loop

# clean up temp
data remove storage world:temp n
data remove storage world:temp room_to_remove
