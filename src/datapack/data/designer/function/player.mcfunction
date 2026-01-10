scoreboard players enable @s designer


execute if score @s d.state matches 1 unless dimension designer:plot_1 unless dimension designer:plot_2 unless dimension designer:plot_3 unless dimension designer:plot_3 unless dimension designer:plot_4 unless dimension designer:plot_5 run function designer:to_main

execute unless score @s d.state matches 0.. run scoreboard players set @s d.state 0

##States:
#0 = on main world
#1 = on plot

execute if data storage designer:setts {gamemode_switch:false} if score @s d.state matches 1 run function designer:switch_gamemode

##Normal trigger
execute if score @s d.state matches 0 if score @s designer matches 0 run playsound minecraft:block.wooden_button.click_off master @s ~ ~ ~ 1 0.8
execute if score @s d.state matches 0 if score @s designer matches 0 run tellraw @s [{"text": "[⚒ Designer ⚒]: ","color": "blue", "bold": true},{"text": "Use ","color": "yellow","bold": false},{"text": "/trigger designer set <1-5> ","color": "gold","bold": false}, {"text": "to go to the desired designing plot.", "bold": false, "color": "yellow"}]
execute if score @s d.state matches 0 if score @s designer matches 0 run dialog show @s designer:slect_plot

##To plot
execute if score @s designer matches 1..5 run function designer:to_plot

##Invalid Plot Number
execute if score @s d.state matches 0 if score @s designer matches 6.. run tellraw @s [{"text": "[⚒ Designer ⚒]: ","color": "blue", "bold": true},{"text": "That plot does not exist! Use a number between 1 and 5!", "color": "red","bold": false}]

##Back
execute if score @s d.state matches 1 if score @s designer matches 0 run function designer:to_main

scoreboard players set @s designer -1
