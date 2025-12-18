#Mark the ray as having found a block.
scoreboard players set #hit bonzostaffcasttemp 1
summon marker ~ ~ ~ {Tags:["bonzo_staff_marker"]}
schedule function tools:bonzo_staff/explode 1.5t append
#schedule function tools:spirit_scepter/explode 6.5t append