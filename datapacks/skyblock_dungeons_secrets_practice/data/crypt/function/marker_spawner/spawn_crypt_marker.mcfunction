execute align xyz positioned ~0.5 ~ ~0.5 run summon marker ~ ~ ~ {Tags:["crypt_marker"]}

# add tag from n in storage
#data modify entity @n[tag=crypt_marker] Tags append string storage crypt:current_crypt n

# set the score 'n' for the crypt we just spawned, to the current crypt n value
execute store result score @n[tag=crypt_marker] n run scoreboard players get #current.crypt n

# if there are now two crypts with the same n value, add 1 to current crypt value
execute as @n[tag=crypt_marker] at @s at @e[tag=crypt_marker,distance=0.1..] if score @s n = @n[tag=crypt_marker] n run function crypt:marker_spawner/increase_crypt_count


