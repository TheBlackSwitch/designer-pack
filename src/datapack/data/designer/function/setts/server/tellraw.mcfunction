tellraw @s {"text": "------------- Server ------------","bold": true,"color": "green"}

tellraw @s [{"text":""},{"text": "Main world gamemode: ","bold": true,"color": "yellow","hoverEvent": {"action": "show_text", "contents": {"text":"The gamemode of your main world.","color": "dark_purple"}}},{"text": "[","color": "blue"}, \
{"nbt":"main_gamemode","storage":"designer:setts","color": "blue","hoverEvent": {"action": "show_text","contents": {"text": "Click to change","color":"dark_purple"}},"clickEvent": {"action": "run_command","value": "/function designer:setts/server/main_gamemode"}},{"text": "]","color": "blue"}]

tellraw @s [{"text":""},{"text": "Plot gamemode: ","bold": true,"color": "yellow","hoverEvent": {"action": "show_text", "contents": {"text":"The default gamemode for players who join a plot.","color": "dark_purple"}}},{"text": "[","color": "blue"}, \
{"nbt":"plot_gamemode","storage":"designer:setts","color": "blue","hoverEvent": {"action": "show_text","contents": {"text": "Click to change","color":"dark_purple"}},"clickEvent": {"action": "run_command","value": "/function designer:setts/server/plot_gamemode"}},{"text": "]","color": "blue"}]

execute if data storage designer:setts {gamemode_switch:true} run tellraw @s [{"text":""},{"text": "Allow Gamemode Switch: ","bold": true,"color": "yellow","hoverEvent": {"action": "show_text", "contents": {"text":"Allow players to switch gamemode while on a plot.","color": "dark_purple"}}},{"text": "[","color": "green"}, \
{"text":"True","color": "green","hoverEvent": {"action": "show_text","contents": {"text": "Click to change","color":"dark_purple"}},"clickEvent": {"action": "run_command","value": "/function designer:setts/server/switch_gamemode"}},{"text": "]","color": "green"}]

execute if data storage designer:setts {gamemode_switch:false} run tellraw @s [{"text":""},{"text": "Allow Gamemode Switch: ","bold": true,"color": "yellow","hoverEvent": {"action": "show_text", "contents": {"text":"Allow players to switch gamemode while on a plot.","color": "dark_purple"}}},{"text": "[","color": "red"}, \
{"text":"False","color": "red","hoverEvent": {"action": "show_text","contents": {"text": "Click to change","color":"dark_purple"}},"clickEvent": {"action": "run_command","value": "/function designer:setts/server/switch_gamemode"}},{"text": "]","color": "red"}]