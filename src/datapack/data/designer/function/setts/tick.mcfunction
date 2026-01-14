#-------------------------------------------------------
## Imports
#-------------------------------------------------------

import designer:triggers/configs as config

#-------------------------------------------------------
## Inits
#-------------------------------------------------------

# Enable the scoreboard
scoreboard players enable @s designer_config

execute unless score @s designer_config matches 1.. run return fail

#-------------------------------------------------------
## Defualt settings
#-------------------------------------------------------

execute unless score @s d.setts.plot_gamemode matches 0.. run scoreboard players set @s d.setts.plot_gamemode 1
execute unless score @s d.setts.enable_plot_title matches 0.. run scoreboard players set @s d.setts.enable_plot_title 1

#-------------------------------------------------------
## Handle trigger commands
#-------------------------------------------------------

execute if score @s designer_config matches config.const.EDIT_PLOT_GAMEMODE run return:
    scoreboard players set #about temp 0 # this dialog is not redirected from the about section
    function designer:setts/client/plot_gamemode

execute if score @s designer_config matches config.const.ENABLE_TITLE run return:
    scoreboard players set #about temp 0 # this dialog is not redirected from the about section
    function designer:setts/client/enable_title

execute if score @s designer_config matches config.const.EDIT_PLOT_GAMEMODE_ABOUT run return:
    scoreboard players set #about temp 1 # this dialog is redirected from the about section
    function designer:setts/client/plot_gamemode

execute if score @s designer_config matches config.const.ENABLE_TITLE_ABOUT run return:
    scoreboard players set #about temp 1 # this dialog is redirected from the about section
    function designer:setts/client/enable_title

# close the dialog
execute if score @s designer_config matches config.const.CLOSE run return:
    dialog clear @s
    scoreboard players set @s designer_config 0

# show command
execute if score @s designer_config matches config.const.SHOW_COMMAND run return:
    dialog clear @s
    scoreboard players set @s designer_config 0
    tellraw @s [
        {"text": "[⚒ Designer ⚒]: ","color": "blue", "bold": true},
        {"text": "Use ","color": "yellow","bold": false},
        {"text": "/trigger designer ","color": "gold","bold": false,"hover_event":{"action":"show_text","value":{"text":"Click to run in chat"}},"click_event":{"action":"suggest_command","command":"/trigger designer"}},
        {"text": "to go to a creative plot.", "bold": false, "color": "yellow"}
    ]

#-------------------------------------------------------
## Show the dialog
#-------------------------------------------------------

# redirected from about section:
scoreboard players set #about temp 0
execute if score @s designer_config matches config.const.OPEN_CONFIGS_ABOUT run scoreboard players set #about temp 1

# normal (fallback)
function designer:setts/build_dialog

#-------------------------------------------------------
## Resets
#-------------------------------------------------------
scoreboard players set @s designer_config 0