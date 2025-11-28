# increase n
scoreboard players add #temp n 1
execute store result storage world:temp n int 1 run scoreboard players get #temp n

# looop
function world:misc/selected_rooms_storage_rmstr/loop

