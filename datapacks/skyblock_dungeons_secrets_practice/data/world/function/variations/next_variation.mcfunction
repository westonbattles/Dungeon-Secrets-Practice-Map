#input: {room_id: "some freaking id idk man"}
execute as @p at @s run playsound block.note_block.pling block @s ~ ~ ~ 1 2

# add one to current variation number
$execute store result score #temp n run data get storage dungeon:$(room_id) variation
scoreboard players add #temp n 1

# if current variation number >= total variation numbers (0-indexing), set to 0
$execute store result score #temp2 n run data get storage dungeon:$(room_id) variations
$execute if score #temp n >= #temp2 n run data modify storage dungeon:$(room_id) variation set value 0
$execute unless score #temp n >= #temp2 n store result storage dungeon:$(room_id) variation int 1 run scoreboard players get #temp n