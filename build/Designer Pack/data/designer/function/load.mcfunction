tellraw @a [{text: "Designer Pack Reloaded!", color: "green", bold: true}]
function #theblackswitch:v2.0/slow_tick/enable
scoreboard objectives add designer trigger
scoreboard objectives add d.state dummy
scoreboard objectives add d.XpLevels dummy
scoreboard objectives add designer_config trigger
scoreboard objectives add d.setts.enable_plot_title dummy
scoreboard objectives add d.setts.plot_gamemode dummy
scoreboard objectives add d.curr.spawn.point.x dummy
scoreboard objectives add d.curr.spawn.point.y dummy
scoreboard objectives add d.curr.spawn.point.z dummy
scoreboard objectives add d.prev.spawn.point.x dummy
scoreboard objectives add d.prev.spawn.point.y dummy
scoreboard objectives add d.prev.spawn.point.z dummy
scoreboard objectives add d.cod_spawn_egg_use used:cod_spawn_egg
execute unless data storage designer:setts generated run function designer:setts/init
scoreboard objectives add d.prev_artifact_slot_1 dummy
scoreboard objectives add d.prev_artifact_slot_2 dummy
scoreboard objectives add d.prev_artifact_slot_3 dummy
scoreboard objectives add d.was_focused dummy
schedule function designer:tick 1
