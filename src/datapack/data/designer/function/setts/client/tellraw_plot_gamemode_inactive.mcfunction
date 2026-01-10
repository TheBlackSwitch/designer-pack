execute if score @s d.setts.plot_gamemode matches 0 run tellraw @s [{"text": "Plot gamemode: ","bold": true,"color": "gray","hoverEvent": {"action": "show_text", "contents": {"text":"Your gamemode on any plot.","color": "red"}}}, \
{"text":"[Survival]","color": "dark_gray","hoverEvent": {"action": "show_text","contents": {"text": "Changing your gamemode is disabled on this server!","color":"red"}}}]

execute if score @s d.setts.plot_gamemode matches 1 run tellraw @s [{"text": "Plot gamemode: ","bold": true,"color": "gray","hoverEvent": {"action": "show_text", "contents": {"text":"Your gamemode on any plot.","color": "red"}}}, \
{"text":"[Creative]","color": "dark_gray","hoverEvent": {"action": "show_text","contents": {"text": "Changing your gamemode is disabled on this server!","color":"red"}}}]

execute if score @s d.setts.plot_gamemode matches 2 run tellraw @s [{"text": "Plot gamemode: ","bold": true,"color": "gray","hoverEvent": {"action": "show_text", "contents": {"text":"Your gamemode on any plot.","color": "red"}}}, \
{"text":"[Spectator]","color": "dark_gray","hoverEvent": {"action": "show_text","contents": {"text": "Changing your gamemode is disabled on this server!","color":"red"}}}]

execute if score @s d.setts.plot_gamemode matches 3 run tellraw @s [{"text": "Plot gamemode: ","bold": true,"color": "gray","hoverEvent": {"action": "show_text", "contents": {"text":"Your gamemode on any plot.","color": "red"}}}, \
{"text":"[Adventure]","color": "dark_gray","hoverEvent": {"action": "show_text","contents": {"text": "Changing your gamemode is disabled on this server!","color":"red"}}}]

