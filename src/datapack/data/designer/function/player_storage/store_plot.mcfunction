function designer:player_storage/store_inv


execute store result storage designer:temp player_storage.player_id int 1 run scoreboard players get @s tbs.ID

data modify storage designer:temp player_storage.source set value 'storage designer:temp player_storage.value'

data modify storage designer:temp player_storage.value set from entity @n[type=chest_minecart,distance=..1,tag=player_inv] Items
data modify storage designer:temp player_storage.path set value 'plot.inv'
function theblackswitch:player_storage/set_from with storage designer:temp player_storage
data remove storage designer:temp player_storage.value

data modify storage designer:temp player_storage.value set from entity @n[type=chest_minecart,distance=..1,tag=player_hot] Items
data modify storage designer:temp player_storage.path set value 'plot.hot'
function theblackswitch:player_storage/set_from with storage designer:temp player_storage
data remove storage designer:temp player_storage.value

data modify storage designer:temp player_storage.value set from entity @n[type=chest_minecart,distance=..1,tag=player_end] Items
data modify storage designer:temp player_storage.path set value 'plot.end'
function theblackswitch:player_storage/set_from with storage designer:temp player_storage
data remove storage designer:temp player_storage.value

execute store result storage designer:temp player_storage.value.X int 1 run data get entity @s Pos[0]
execute store result storage designer:temp player_storage.value.Y int 1 run data get entity @s Pos[1]
execute store result storage designer:temp player_storage.value.Z int 1 run data get entity @s Pos[2]
data modify storage designer:temp player_storage.value.dim set from entity @s Dimension
data modify storage designer:temp player_storage.path set value 'plot.Pos'
function theblackswitch:player_storage/set_from with storage designer:temp player_storage
data remove storage designer:temp player_storage.value

execute as @e[tag=temp_storage] run data remove entity @s Items
kill @e[tag=temp_storage]
clear @s
effect clear @s
xp set @s 0 levels
xp set @s 0 points