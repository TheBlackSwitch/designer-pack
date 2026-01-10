execute if score @s d.setts.plot_gamemode matches 0 run tellraw @s [{"text":""},{"text": "Plot gamemode: ","bold": true,"color": "yellow","hoverEvent": {"action": "show_text", "contents": {"text":"Your gamemode on any plot.","color": "dark_purple"}}}, \
{"text":"[Survival]","color": "blue","hoverEvent": {"action": "show_text","contents": {"text": "Click to change","color":"dark_purple"}},"clickEvent": {"action": "run_command","value": "/trigger designer_config set 97460"}}]

execute if score @s d.setts.plot_gamemode matches 1 run tellraw @s [{"text":""},{"text": "Plot gamemode: ","bold": true,"color": "yellow","hoverEvent": {"action": "show_text", "contents": {"text":"Your gamemode on any plot.","color": "dark_purple"}}}, \
{"text":"[Creative]","color": "blue","hoverEvent": {"action": "show_text","contents": {"text": "Click to change","color":"dark_purple"}},"clickEvent": {"action": "run_command","value": "/trigger designer_config set 97460"}}]

execute if score @s d.setts.plot_gamemode matches 2 run tellraw @s [{"text":""},{"text": "Plot gamemode: ","bold": true,"color": "yellow","hoverEvent": {"action": "show_text", "contents": {"text":"Your gamemode on any plot.","color": "dark_purple"}}}, \
{"text":"[Spectator]","color": "blue","hoverEvent": {"action": "show_text","contents": {"text": "Click to change","color":"dark_purple"}},"clickEvent": {"action": "run_command","value": "/trigger designer_config set 97460"}}]

execute if score @s d.setts.plot_gamemode matches 3 run tellraw @s [{"text":""},{"text": "Plot gamemode: ","bold": true,"color": "yellow","hoverEvent": {"action": "show_text", "contents": {"text":"Your gamemode on any plot.","color": "dark_purple"}}}, \
{"text":"[Adventure]","color": "blue","hoverEvent": {"action": "show_text","contents": {"text": "Click to change","color":"dark_purple"}},"clickEvent": {"action": "run_command","value": "/trigger designer_config set 97460"}}]
