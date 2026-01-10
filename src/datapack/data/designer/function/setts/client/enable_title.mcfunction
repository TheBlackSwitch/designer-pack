execute if score @s d.setts.enable_plot_title matches 0 run scoreboard players set .enable_plot_title temp 1
execute if score @s d.setts.enable_plot_title matches 1 run scoreboard players set .enable_plot_title temp 0

execute at @s run playsound block.dispenser.dispense master @s ~ ~ ~
execute at @s if score .enable_plot_title temp matches 1 run playsound block.end_portal_frame.fill master @s ~ ~ ~ 1 1.3
execute at @s if score .enable_plot_title temp matches 0 run playsound block.end_portal_frame.fill master @s ~ ~ ~ 1 0.7

scoreboard players operation @s d.setts.enable_plot_title = .enable_plot_title temp

function designer:setts/client/tellraw