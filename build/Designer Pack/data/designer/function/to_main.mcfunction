execute at @s run function designer:player_storage/store_plot
clear @s
execute at @s run function designer:player_storage/restore_main
tellraw @s [{text: "[\u2692 Designer \u2692]: ", color: "blue", bold: true}, {text: "Teleporting back!", color: "light_purple", bold: false}]
execute at @s run playsound block.portal.travel master @s ~ ~ ~ 0.3 2
execute if data storage designer:setts {main_gamemode: "survival"} run gamemode survival @s
execute if data storage designer:setts {main_gamemode: "creative"} run gamemode creative @s
execute if data storage designer:setts {main_gamemode: "spectator"} run gamemode spectator @s
execute if data storage designer:setts {main_gamemode: "adventure"} run gamemode adventure @s
scoreboard players operation @s artifact_slot_1 = @s d.prev_artifact_slot_1
scoreboard players operation @s artifact_slot_2 = @s d.prev_artifact_slot_2
scoreboard players operation @s artifact_slot_3 = @s d.prev_artifact_slot_3
function ancient_artifacts:artifacts/reset
execute if score @s d.was_focused matches 1 run tag @s add focused
effect clear @s
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s d.state 0
scoreboard players set @s designer -1
execute store result score @s d.curr.spawn.point.x run data get entity @s respawn.pos[0]
execute store result score @s d.curr.spawn.point.y run data get entity @s respawn.pos[0]
execute store result score @s d.curr.spawn.point.z run data get entity @s respawn.pos[0]
execute if function designer:detect_respawn_change in minecraft:overworld positioned 0.0 0.0 0.0 positioned over world_surface run spawnpoint @s ~ ~ ~
