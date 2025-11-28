#CONSTANTS
scoreboard players set #100 n 100
scoreboard players set #tickspersecond n 20

attribute @p minecraft:entity_interaction_range base set 4.5
effect give @a night_vision infinite 255 true

scoreboard objectives add moved dummy
scoreboard objectives add start_time dummy
scoreboard objectives add end_time dummy
scoreboard objectives add ticks dummy
scoreboard objectives add seconds dummy
scoreboard objectives add 10thofasecond dummy
scoreboard objectives add milliseconds dummy
scoreboard objectives add show_timer dummy
scoreboard objectives add run_timer dummy
scoreboard objectives add playing_selected_rooms dummy

#attribute @p minecraft:block_interaction_range base set 4

