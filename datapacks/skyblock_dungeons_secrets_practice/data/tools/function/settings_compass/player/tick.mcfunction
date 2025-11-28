# teleport minecart chest to the player if they're holding the compass
execute if items entity @s weapon.* *[minecraft:custom_data={ui:1b}] run function tools:settings_compass/player/teleport

# if we aren't holding the compass and the ui is still open, close it
execute unless items entity @s weapon.* *[minecraft:custom_data={ui:1b}] if score @s ui.enabled matches 0.. run function tools:settings_compass/player/close