execute store result storage designer:temp x int 1 run scoreboard players get @s d.spawn.point.x
execute store result storage designer:temp y int 1 run scoreboard players get @s d.spawn.point.y
execute store result storage designer:temp z int 1 run scoreboard players get @s d.spawn.point.z
function designer:set_spawnpoint with storage designer:temp
