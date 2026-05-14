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

scoreboard objectives add d.spawn.point.x dummy
scoreboard objectives add d.spawn.point.y dummy
scoreboard objectives add d.spawn.point.z dummy

scoreboard objectives add d.spawn.point.x dummy
scoreboard objectives add d.spawn.point.y dummy
scoreboard objectives add d.spawn.point.z dummy
scoreboard objectives add d.was_forceloaded dummy

scoreboard objectives add d.cod_spawn_egg_use used:cod_spawn_egg

scoreboard objectives add d.damage dummy

#-------------------------------------------------------
## Other Inits
#-------------------------------------------------------

execute unless data storage designer:setts generated run function designer:setts/init

#-------------------------------------------------------
## Compat
#-------------------------------------------------------

# Ancient Artifacts 2
scoreboard objectives add d.prev_artifact_slot_1 dummy
scoreboard objectives add d.prev_artifact_slot_2 dummy
scoreboard objectives add d.prev_artifact_slot_3 dummy
scoreboard objectives add d.was_focused dummy

# Travelers backpack
execute store result score #installed.travelers_backpack tbs.server_data run function designer:__compat__/travelers_backpack/installed


schedule function designer:tick 1t