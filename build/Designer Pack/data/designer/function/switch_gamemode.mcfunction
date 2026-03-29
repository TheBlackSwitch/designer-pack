execute if score @s d.setts.plot_gamemode matches 0 run return run gamemode survival @s
execute if score @s d.setts.plot_gamemode matches 1 run return run gamemode creative @s
execute if score @s d.setts.plot_gamemode matches 2 run return run gamemode spectator @s
execute if score @s d.setts.plot_gamemode matches 3 run return run gamemode adventure @s
execute if data storage designer:setts {plot_gamemode: "survival"} run return run function designer:switch_gamemode/nested_return_0
execute if data storage designer:setts {plot_gamemode: "creative"} run return run function designer:switch_gamemode/nested_return_1
execute if data storage designer:setts {plot_gamemode: "spectator"} run return run function designer:switch_gamemode/nested_return_2
execute if data storage designer:setts {plot_gamemode: "adventure"} run return run function designer:switch_gamemode/nested_return_3
