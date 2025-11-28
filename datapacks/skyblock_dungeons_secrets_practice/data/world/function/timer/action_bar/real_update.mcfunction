scoreboard players add #actionbar milliseconds 5
execute if score #actionbar milliseconds matches 10.. run scoreboard players add #actionbar 10thofasecond 1
execute if score #actionbar milliseconds matches 10.. run scoreboard players set #actionbar milliseconds 0

execute if score #actionbar 10thofasecond matches 10.. run scoreboard players add #actionbar seconds 1
execute if score #actionbar 10thofasecond matches 10.. run scoreboard players set #actionbar 10thofasecond 0