tellraw @a [{"text":"Designer Pack Reloaded!","color":"green","bold": true}]

#-------------------------------------------------------
## Enable Library Features
#-------------------------------------------------------

function #theblackswitch:__version__/slow_tick/enable


#-------------------------------------------------------
## Scoreboards
#-------------------------------------------------------

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

scoreboard objectives add d.damage dummy

#-------------------------------------------------------
## Other Inits
#-------------------------------------------------------

execute unless data storage designer:setts generated run function designer:setts/init

#-------------------------------------------------------
## AA2 Compat
#-------------------------------------------------------

scoreboard objectives add d.prev_artifact_slot_1 dummy
scoreboard objectives add d.prev_artifact_slot_2 dummy
scoreboard objectives add d.prev_artifact_slot_3 dummy
scoreboard objectives add d.was_focused dummy

schedule function designer:tick 1t