
# Get the main inventory from the player storage
data remove storage designer:temp main
execute store result storage theblackswitch:temp player_storage.player_id int 1 run scoreboard players get @s tbs.ID
data modify storage theblackswitch:temp player_storage.path set value 'main'
data modify storage theblackswitch:temp player_storage.result set value 'designer:temp main'
function #theblackswitch:__version__/player_storage/get with storage theblackswitch:temp player_storage

summon chest_minecart ~ ~ ~ {Tags:[player_inv,temp_storage],NoGravity:1b,Invulnerable:1b}
summon chest_minecart ~ ~ ~ {Tags:[player_end,temp_storage],NoGravity:1b,Invulnerable:1b}
summon chest_minecart ~ ~ ~ {Tags:[player_hot,temp_storage],NoGravity:1b,Invulnerable:1b}

data modify entity @n[type=chest_minecart,distance=..1,tag=player_inv,tag=temp_storage] Items set from storage designer:temp main.inv
data modify entity @n[type=chest_minecart,distance=..1,tag=player_end,tag=temp_storage] Items set from storage designer:temp main.end
data modify entity @n[type=chest_minecart,distance=..1,tag=player_hot,tag=temp_storage] Items set from storage designer:temp main.hot

function designer:player_storage/restore_inv

execute store result score @s d.XpLevels run data get storage designer:temp main.xp
function designer:player_storage/restore_xp


# Travelers Backpack Compat
execute if score #installed.travelers_backpack tbs.server_data matches 1 run function designer:__compat__/travelers_backpack/restore/main

function designer:tp with storage designer:temp main.Pos

# Travelers Backpack Compat
execute if score #installed.travelers_backpack tbs.server_data matches 1 run function designer:__compat__/travelers_backpack/restore/teleport


execute as @e[tag=temp_storage] run data modify entity @s Items set value []
kill @e[tag=temp_storage]