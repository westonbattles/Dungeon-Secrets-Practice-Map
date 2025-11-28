# do we need these in storage? we'll see
#$data modify storage dungeon:current_room name set value $(name)
#$data modify storage dungeon:current_room secrets set value $(secrets)

$bossbar set current_room name "$(name)"
$bossbar set current_room max $(secrets)

function bossbar:show


#{"name":"Catwalk", "secrets": 5}
#{"nbt":"name","storage":"dungeon:current_room"}