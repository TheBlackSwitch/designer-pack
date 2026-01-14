execute if score @s d.setts.plot_gamemode matches 0 run scoreboard players set .plot_gamemode temp 1
execute if score @s d.setts.plot_gamemode matches 1 run scoreboard players set .plot_gamemode temp 2
execute if score @s d.setts.plot_gamemode matches 2 run scoreboard players set .plot_gamemode temp 3
execute if score @s d.setts.plot_gamemode matches 3 run scoreboard players set .plot_gamemode temp 0
playsound minecraft:entity.breeze.idle_air ui @a ~ ~ ~ 1 1.4
playsound minecraft:item.book.page_turn block @s ~ ~ ~ 5 1
scoreboard players operation @s d.setts.plot_gamemode = .plot_gamemode temp
execute if score @s d.state matches 1 run function designer:switch_gamemode
function designer:setts/build_dialog
scoreboard players set @s designer_config 0
