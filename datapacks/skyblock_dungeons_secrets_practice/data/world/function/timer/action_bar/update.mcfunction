# runs every tick
execute unless score #actionbar run_timer matches 0 run function world:timer/action_bar/real_update
execute unless score #actionbar show_timer matches 0 run title @p actionbar [{score:{name:"#actionbar",objective:seconds}},{text:":"},{score:{name:"#actionbar",objective:"10thofasecond"}},{score:{name:"#actionbar",objective:milliseconds}}]
