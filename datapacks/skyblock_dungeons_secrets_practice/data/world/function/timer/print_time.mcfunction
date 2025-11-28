# input: {seconds: n, milliseconds: n, pb_message: (". New PB!", or "")}
#$tellraw @s [{"text":"Finished in $(seconds).$(milliseconds)s"},{"text":"$(pb_message)","color":"green","italic":1b,"bold":1b}]
$tellraw @s [{"text":"Finished in "},{"score":{"name":"#actionbar","objective":"seconds"}},{"text":"."},{"score":{"name":"#actionbar","objective":"10thofasecond"}},{"score":{"name":"#actionbar","objective":"milliseconds"}},{"text":"$(pb_message)","color":"green","italic":1b,"bold":1b}]
data modify storage world:temp pb_message set value ""
# might have to set pb_message to be non empty we'll see