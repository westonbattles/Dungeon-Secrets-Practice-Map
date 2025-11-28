# recursively go through ui in storage to print each item
data modify storage world:temp index set value 0
scoreboard players set #temp n 0

function tools:settings_compass/player/return_items with storage world:temp