execute store result score @s cooldown.return_barrier run time query gametime
scoreboard players add @s cooldown.return_barrier 30
schedule function tools:return_barrier/reset_cooldown 30t append

function world:return with storage world:return