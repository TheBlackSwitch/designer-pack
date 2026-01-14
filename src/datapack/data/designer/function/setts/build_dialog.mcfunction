##-------Construct-All-Macros-------

# plot gamemode
execute if score @s d.setts.plot_gamemode matches 0 run data modify storage designer:temp dialog.plot_gamemode set value "Survival"
execute if score @s d.setts.plot_gamemode matches 1 run data modify storage designer:temp dialog.plot_gamemode set value "Creative"
execute if score @s d.setts.plot_gamemode matches 2 run data modify storage designer:temp dialog.plot_gamemode set value "Spectator"
execute if score @s d.setts.plot_gamemode matches 3 run data modify storage designer:temp dialog.plot_gamemode set value "Adventure"

# title_enabled
execute if score @s d.setts.enable_plot_title matches 0 run data modify storage designer:temp dialog.title_enabled set value "False"
execute if score @s d.setts.enable_plot_title matches 1 run data modify storage designer:temp dialog.title_enabled set value "True"

# default_plot
execute if data storage designer:setts {plot_gamemode:"survival"} run data modify storage designer:temp dialog.default_plot set value "Survival"
execute if data storage designer:setts {plot_gamemode:"creative"} run data modify storage designer:temp dialog.default_plot set value "Creative"
execute if data storage designer:setts {plot_gamemode:"adventure"} run data modify storage designer:temp dialog.default_plot set value "Adventure"
execute if data storage designer:setts {plot_gamemode:"spectator"} run data modify storage designer:temp dialog.default_plot set value "Spectator"

# default_world
execute if data storage designer:setts {main_gamemode:"survival"} run data modify storage designer:temp dialog.default_world set value "Survival"
execute if data storage designer:setts {main_gamemode:"creative"} run data modify storage designer:temp dialog.default_world set value "Creative"
execute if data storage designer:setts {main_gamemode:"adventure"} run data modify storage designer:temp dialog.default_world set value "Adventure"
execute if data storage designer:setts {main_gamemode:"spectator"} run data modify storage designer:temp dialog.default_world set value "Spectator"

# gamemode_switch
execute if data storage designer:setts {gamemode_switch:true} run data modify storage designer:temp dialog.gamemode_switch set value "True"
execute if data storage designer:setts {gamemode_switch:false} run data modify storage designer:temp dialog.gamemode_switch set value "False"

##-------Contruct-Dialog-------
execute if score #about temp matches 1 run return run function designer:setts/show_dialog_about with storage designer:temp dialog
function designer:setts/show_dialog with storage designer:temp dialog