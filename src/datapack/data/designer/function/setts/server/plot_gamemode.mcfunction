execute if data storage designer:setts {plot_gamemode:"survival"} run data modify storage designer:temp plot_gamemode set value "creative"
execute if data storage designer:setts {plot_gamemode:"creative"} run data modify storage designer:temp plot_gamemode set value "spectator"
execute if data storage designer:setts {plot_gamemode:"spectator"} run data modify storage designer:temp plot_gamemode set value "adventure"
execute if data storage designer:setts {plot_gamemode:"adventure"} run data modify storage designer:temp plot_gamemode set value "survival"

execute at @s run playsound block.dispenser.dispense master @s ~ ~ ~
playsound minecraft:item.book.page_turn block @s ~ ~ ~ 5 1

data modify storage designer:setts plot_gamemode set from storage designer:temp plot_gamemode

execute if data storage designer:setts {gamemode_switch:false,plot_gamemode:"survival"} run scoreboard players set @a d.setts.plot_gamemode 0
execute if data storage designer:setts {gamemode_switch:false,plot_gamemode:"creative"} run scoreboard players set @a d.setts.plot_gamemode 1
execute if data storage designer:setts {gamemode_switch:false,plot_gamemode:"spectator"} run scoreboard players set @a d.setts.plot_gamemode 2
execute if data storage designer:setts {gamemode_switch:false,plot_gamemode:"adventure"} run scoreboard players set @a d.setts.plot_gamemode 3
execute as @a[scores={d.state=1}] run function designer:switch_gamemode

function designer:setts/server/tellraw