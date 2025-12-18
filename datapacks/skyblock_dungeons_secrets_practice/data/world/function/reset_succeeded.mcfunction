scoreboard players set @s secrets_found 0
bossbar set current_room value 0
function secrets:helper/reset_secrets
kill @e[type=item]
