scoreboard objectives add cooldown.aotv dummy
scoreboard objectives add cooldown.spirit_scepter dummy
scoreboard objectives add cooldown.bonzo_staff dummy
scoreboard objectives add cooldown.return_barrier dummy

scoreboard objectives add spiritsceptercasttemp dummy
scoreboard objectives add bonzostaffcasttemp dummy

scoreboard objectives add bonzo.launch_vector.x dummy
scoreboard objectives add bonzo.launch_vector.z dummy
scoreboard objectives add bonzo.launch_vector.magnitude dummy

scoreboard objectives add ui dummy
scoreboard objectives add ui.enabled dummy

# just in case
advancement revoke @a only tools:etherwarp
advancement revoke @a only tools:spirit_scepter_used
advancement revoke @a only tools:bonzo_staff_used
advancement revoke @a only tools:teleport
advancement revoke @a only tools:return_barrier

scoreboard players set #-1 n -1
scoreboard players set #10000 n 10000
scoreboard players set #strength n 15395

function tools:tick7