# room id is an input

$execute store result score #temp n run data get storage dungeon:$(room_id) secrets
execute if score @s secrets_found >= #temp n run scoreboard players set @s all_secrets_found 1