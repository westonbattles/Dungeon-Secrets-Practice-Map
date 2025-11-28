#Mark the ray as having found a block.

scoreboard players set #hit spiritsceptercasttemp 1
summon marker ~ ~ ~ {Tags:["spirit_scepter_marker"]}

schedule function tools:spirit_scepter/explode 6.5t append