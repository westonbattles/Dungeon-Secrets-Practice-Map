# input (world:temp) {room_id}

# if we have a pb, we need to
# - set storage world.temp pb_message to ". New PB!"
# - update dungeon:(current_room) pb storage to @s ticks

data modify storage world:temp pb_message set value " New PB!"
$execute store result storage dungeon:$(room_id) pb int 1 run scoreboard players get @s ticks
$data modify entity @e[type=text_display,tag=pb_display,tag=$(room_id),limit=1] text set value [{"color":"#CFCFCF","text":"PB:\n","italic":1b},{"score":{"name":"#actionbar","objective":"seconds"}},{"text":"."},{"score":{"name":"#actionbar","objective":"10thofasecond"}},{"score":{"name":"#actionbar","objective":"milliseconds"}},{text:"s"}]
#$data modify entity @e[type=text_display,tag=pb_display,tag=$(room_id),limit=1] text set value [{"color":"#CFCFCF","text":"PB:\n$(seconds).$(milliseconds)s","italic":1b}]
#{"score":{"name":"#actionbar","objective":"seconds"}},{"text":"."},{"score":{"name":"#actionbar","objective":"10thofasecond"}},{"score":{"name":"#actionbar","objective":"milliseconds"}}