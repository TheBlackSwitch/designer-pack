scoreboard players operation @s d.prev_artifact_slot_1 = @s artifact_slot_1
scoreboard players operation @s d.prev_artifact_slot_2 = @s artifact_slot_2
scoreboard players operation @s d.prev_artifact_slot_3 = @s artifact_slot_3
scoreboard players set @s artifact_slot_1 0
scoreboard players set @s artifact_slot_2 0
scoreboard players set @s artifact_slot_3 0
function ancient_artifacts:artifacts/reset
scoreboard players set @s d.was_focused 0
execute if entity @s[tag=focused] run scoreboard players set @s d.was_focused 1
tag @s remove focused
execute if score @s d.state matches 0 at @s run function designer:player_storage/store_main
execute if score @s d.state matches 0 at @s run function designer:player_storage/restore_plot
tellraw @s [{text: "[\u2692 Designer \u2692]: ", color: "blue", bold: true}, {text: "Teleporting to designer plot ", color: "light_purple", bold: false}, {score: {name: "*", objective: "designer"}, color: "light_purple", bold: false}]
tellraw @s [{text: "[\u2692 Designer \u2692]: ", color: "blue", bold: true}, {text: "Use ", color: "yellow", bold: false}, {text: "/trigger designer ", color: "gold", bold: false}, {text: "to go back to your world.", color: "yellow", bold: false}]
tellraw @s [{text: "[\u2692 Designer \u2692]: ", color: "blue", bold: true}, {text: "TIP: You can use ", color: "yellow", bold: false}, {text: "/trigger designer_config ", color: "gold", bold: false}, {text: "to edit designer's settings!", color: "yellow", bold: false}]
execute if score @s designer matches 1 run title @s title {text: "Generic Flat", color: "green"}
execute if score @s designer matches 2 run title @s title {text: "Quartz Flat", color: "gray"}
execute if score @s designer matches 3 run title @s title {text: "Redstone Ready", color: "yellow"}
execute if score @s designer matches 4 run title @s title {text: "Empty Void", color: "dark_gray"}
execute if score @s designer matches 5 run title @s title {text: "Generic Overworld", color: "blue"}
execute at @s if score @s designer matches 1 in designer:plot_1 run tp @s ~ ~ ~
execute at @s if score @s designer matches 2 in designer:plot_2 run tp @s ~ ~ ~
execute at @s if score @s designer matches 3 in designer:plot_3 run tp @s ~ ~ ~
execute at @s if score @s designer matches 4 in designer:plot_4 run tp @s ~ ~ ~
execute at @s if score @s designer matches 5 in designer:plot_5 run tp @s ~ ~ ~
execute at @s if data storage designer:setts {gamemode_switch: false, plot_gamemode: "survival"} run scoreboard players set @a d.setts.plot_gamemode 0
execute at @s if data storage designer:setts {gamemode_switch: false, plot_gamemode: "creative"} run scoreboard players set @a d.setts.plot_gamemode 1
execute at @s if data storage designer:setts {gamemode_switch: false, plot_gamemode: "spectator"} run scoreboard players set @a d.setts.plot_gamemode 2
execute at @s if data storage designer:setts {gamemode_switch: false, plot_gamemode: "adventure"} run scoreboard players set @a d.setts.plot_gamemode 3
function designer:switch_gamemode
execute at @s run forceload add ~ ~
execute at @s positioned over world_surface run tp @s ~ ~ ~
execute at @s run forceload remove ~ ~
execute at @s run playsound block.portal.travel master @s ~ ~ ~ 0.3 2
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s d.state 1
scoreboard players set @s designer -1
execute store result score @s d.curr.spawn.point.x run data get entity @s respawn.pos[0]
execute store result score @s d.curr.spawn.point.y run data get entity @s respawn.pos[0]
execute store result score @s d.curr.spawn.point.z run data get entity @s respawn.pos[0]
execute store result score @s d.prev.spawn.point.x run data get entity @s respawn.pos[0]
execute store result score @s d.prev.spawn.point.y run data get entity @s respawn.pos[0]
execute store result score @s d.prev.spawn.point.z run data get entity @s respawn.pos[0]
