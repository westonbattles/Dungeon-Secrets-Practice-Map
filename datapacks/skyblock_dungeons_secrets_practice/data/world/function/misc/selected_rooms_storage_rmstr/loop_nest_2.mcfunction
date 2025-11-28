#$tellraw @a {"storage":"world:rooms","nbt":"selected[$(n)]"}

$data modify storage world:temp current_room set from storage world:rooms selected[$(n)]

execute run function world:misc/selected_rooms_storage_rmstr/string_cmp with storage world:temp

$return run data get storage world:rooms selected[$(n)]