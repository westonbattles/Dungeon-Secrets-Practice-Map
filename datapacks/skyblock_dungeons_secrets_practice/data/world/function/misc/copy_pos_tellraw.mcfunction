data modify storage world:temp x set from entity @s Pos[0]
data modify storage world:temp y set from entity @s Pos[1]
data modify storage world:temp z set from entity @s Pos[2]
data modify storage world:temp pitch set from entity @s Rotation[0]
data modify storage world:temp yaw set from entity @s Rotation[1]
function world:misc/tellraw with storage world:temp
data remove storage world:temp x
data remove storage world:temp y
data remove storage world:temp z
data remove storage world:temp pitch
data remove storage world:temp yaw