scoreboard players add @s secrets_found 1

# check if secret is last secret
function secrets:interacted/last_secret_check with storage dungeon:current_room

# update bossbar
execute store result storage dungeon:temp secrets_found int 1 run scoreboard players get @s secrets_found
function bossbar:set_value with storage dungeon:temp