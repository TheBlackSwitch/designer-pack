##Ticks
execute if score .5 slow_tick matches 4 as @a at @s run function designer:player
execute as @a at @s run function designer:setts/client/tick
function designer:designers_table/tick