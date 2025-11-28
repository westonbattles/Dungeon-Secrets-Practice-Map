execute store result score @s cooldown.aotv run time query gametime
scoreboard players add @s cooldown.aotv 5
schedule function tools:aotv/reset_cooldown 5t append