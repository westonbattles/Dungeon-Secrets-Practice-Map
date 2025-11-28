#input

#print nth array item
$execute store result storage world:temp input.random_n int 1 run random value 0..$(n)

# Add/Delete random selected room
function world:misc/randomize_array/add_random_room with storage world:temp input


#say test
# Continue looping until w have 0 items left to add
# store current n value from input storage into temp, and remove 1 from it and add it back
execute store result score #temp n run data get storage world:temp input.n
scoreboard players remove #temp n 1
execute store result storage world:temp input.n int 1 run scoreboard players get #temp n

execute if score #temp n matches 0.. run function world:misc/randomize_array/loop with storage world:temp input