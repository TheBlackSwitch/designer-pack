scoreboard players enable @s designer_config
execute unless score @s designer_config matches 1.. run return fail
execute unless score @s d.setts.plot_gamemode matches 0.. run scoreboard players set @s d.setts.plot_gamemode 1
execute unless score @s d.setts.enable_plot_title matches 0.. run scoreboard players set @s d.setts.enable_plot_title 1
execute if score @s designer_config matches 97460 run return run function designer:setts/tick/nested_return_0
execute if score @s designer_config matches 97461 run return run function designer:setts/tick/nested_return_1
execute if score @s designer_config matches 97470 run return run function designer:setts/tick/nested_return_2
execute if score @s designer_config matches 97461 run return run function designer:setts/tick/nested_return_3
execute if score @s designer_config matches 90000 run return run function designer:setts/tick/nested_return_4
execute if score @s designer_config matches 90001 run return run function designer:setts/tick/nested_return_5
scoreboard players set #about temp 0
execute if score @s designer_config matches 12353 run scoreboard players set #about temp 1
function designer:setts/build_dialog
scoreboard players set @s designer_config 0
