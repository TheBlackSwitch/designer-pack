execute if data storage designer:setts {gamemode_switch:true} run data modify storage designer:temp gamemode_switch set value false
execute if data storage designer:setts {gamemode_switch:false} run data modify storage designer:temp gamemode_switch set value true

execute at @s run playsound block.dispenser.dispense master @s ~ ~ ~

execute at @s if data storage designer:temp {gamemode_switch:true} run playsound block.end_portal_frame.fill master @s ~ ~ ~ 1 1.3
execute at @s if data storage designer:temp {gamemode_switch:false} run playsound block.end_portal_frame.fill master @s ~ ~ ~ 1 0.7

data modify storage designer:setts gamemode_switch set from storage designer:temp gamemode_switch

execute at @s if data storage designer:setts {gamemode_switch:false,plot_gamemode:"survival"} run scoreboard players set @a d.setts.plot_gamemode 0
execute at @s if data storage designer:setts {gamemode_switch:false,plot_gamemode:"creative"} run scoreboard players set @a d.setts.plot_gamemode 1
execute at @s if data storage designer:setts {gamemode_switch:false,plot_gamemode:"spectator"} run scoreboard players set @a d.setts.plot_gamemode 2
execute at @s if data storage designer:setts {gamemode_switch:false,plot_gamemode:"adventure"} run scoreboard players set @a d.setts.plot_gamemode 3
execute as @a[scores={d.state=1}] run function designer:switch_gamemode

function designer:setts/server/tellraw