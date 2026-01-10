execute if data storage designer:setts {main_gamemode:"survival"} run data modify storage designer:temp main_gamemode set value "creative"
execute if data storage designer:setts {main_gamemode:"creative"} run data modify storage designer:temp main_gamemode set value "spectator"
execute if data storage designer:setts {main_gamemode:"spectator"} run data modify storage designer:temp main_gamemode set value "adventure"
execute if data storage designer:setts {main_gamemode:"adventure"} run data modify storage designer:temp main_gamemode set value "survival"

execute at @s run playsound block.dispenser.dispense master @s ~ ~ ~
playsound minecraft:item.book.page_turn block @s ~ ~ ~ 5 1

data modify storage designer:setts main_gamemode set from storage designer:temp main_gamemode

execute if data storage designer:setts {main_gamemode:"survival"} as @a[scores={d.state=0}] run gamemode survival @s
execute if data storage designer:setts {main_gamemode:"creative"} as @a[scores={d.state=0}] run gamemode creative @s
execute if data storage designer:setts {main_gamemode:"spectator"} as @a[scores={d.state=0}] run gamemode spectator @s
execute if data storage designer:setts {main_gamemode:"adventure"} as @a[scores={d.state=0}] run gamemode adventure @s

function designer:setts/server/tellraw