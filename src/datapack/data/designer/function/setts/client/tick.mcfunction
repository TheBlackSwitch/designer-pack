scoreboard players enable @s designer_config
##Client config
#init
execute unless score @s d.setts.plot_gamemode matches 0.. run scoreboard players set @s d.setts.plot_gamemode 1
execute unless score @s d.setts.enable_plot_title matches 0.. run scoreboard players set @s d.setts.enable_plot_title 1
#trigger
execute if score @s designer_config matches 1..97459 run function designer:setts/client/tellraw
execute if score @s designer_config matches 97460 run function designer:setts/client/plot_gamemode
execute if score @s designer_config matches 97461 run function designer:setts/client/enable_title

scoreboard players set @s designer_config 0