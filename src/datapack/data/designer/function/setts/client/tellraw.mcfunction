tellraw @s {"text": "------------- Client ------------","bold": true,"color": "aqua"}

execute if data storage designer:setts {gamemode_switch:true} run function designer:setts/client/tellraw_plot_gamemode_active
execute if data storage designer:setts {gamemode_switch:false} run function designer:setts/client/tellraw_plot_gamemode_inactive

execute if score @s d.setts.enable_plot_title matches 1 run tellraw @s [{"text":""},{"text": "Enable plot title: ","bold": true,"color": "yellow","hoverEvent": {"action": "show_text", "contents": {"text":"Show the title when joining a certain plot.","color": "dark_purple"}}},{"text": "[","color": "green"}, \
{"text":"True","color": "green","hoverEvent": {"action": "show_text","contents": {"text": "Click to change","color":"dark_purple"}},"clickEvent": {"action": "run_command","value": "/trigger designer_config set 97461"}},{"text": "]","color": "green"}]

execute if score @s d.setts.enable_plot_title matches 0 run tellraw @s [{"text":""},{"text": "Enable plot title: ","bold": true,"color": "yellow","hoverEvent": {"action": "show_text", "contents": {"text":"Show the title when joining a certain plot.","color": "dark_purple"}}},{"text": "[","color": "red"}, \
{"text":"False","color": "red","hoverEvent": {"action": "show_text","contents": {"text": "Click to change","color":"dark_purple"}},"clickEvent": {"action": "run_command","value": "/trigger designer_config set 97461"}},{"text": "]","color": "red"}]