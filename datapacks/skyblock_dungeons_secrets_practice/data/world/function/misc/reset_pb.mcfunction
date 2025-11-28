# input {room_id: "aasdas"}

$data modify storage dungeon:$(room_id) pb set value 999999

$data modify entity @e[type=text_display,tag=pb_display,tag=$(room_id),limit=1] text set value {"color":"#CFCFCF","text":"PB:\n999.99s","italic":1b}