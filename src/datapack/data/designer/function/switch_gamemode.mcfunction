
execute if score @s d.setts.plot_gamemode matches 0 run return run gamemode survival @s
execute if score @s d.setts.plot_gamemode matches 1 run return run gamemode creative @s
execute if score @s d.setts.plot_gamemode matches 2 run return run gamemode spectator @s
execute if score @s d.setts.plot_gamemode matches 3 run return run gamemode adventure @s

# Init the gamemode when it hasn't been toggled
execute if data storage designer:setts {plot_gamemode:"survival"} run return:   
    gamemode survival @s
    scoreboard players set @s d.setts.plot_gamemode 0

execute if data storage designer:setts {plot_gamemode:"creative"}  run return:   
    gamemode creative @s
    scoreboard players set @s d.setts.plot_gamemode 1

execute if data storage designer:setts {plot_gamemode:"spectator"} run return:   
    gamemode spectator @s
    scoreboard players set @s d.setts.plot_gamemode 2

execute if data storage designer:setts {plot_gamemode:"adventure"} run return:   
    gamemode adventure @s
    scoreboard players set @s d.setts.plot_gamemode 3