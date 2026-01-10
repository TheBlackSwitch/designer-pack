execute store result storage designer:temp player_storage.player_id int 1 run scoreboard players get @s tbs.ID

data remove storage designer:temp main
data modify storage designer:temp player_storage.result set value 'designer:temp main'
data modify storage designer:temp player_storage.path set value 'main'
function theblackswitch:player_storage/get with storage designer:temp player_storage

summon chest_minecart ~ ~ ~ {Tags:[player_inv,temp_storage],NoGravity:1b,Invulnerable:1b}
summon chest_minecart ~ ~ ~ {Tags:[player_end,temp_storage],NoGravity:1b,Invulnerable:1b}
summon chest_minecart ~ ~ ~ {Tags:[player_hot,temp_storage],NoGravity:1b,Invulnerable:1b}

data modify entity @n[type=chest_minecart,distance=..1,tag=player_inv,tag=temp_storage] Items set from storage designer:temp main.inv
data modify entity @n[type=chest_minecart,distance=..1,tag=player_end,tag=temp_storage] Items set from storage designer:temp main.end
data modify entity @n[type=chest_minecart,distance=..1,tag=player_hot,tag=temp_storage] Items set from storage designer:temp main.hot

function designer:player_storage/restore_inv

execute as @e[tag=temp_storage] run data modify entity @s Items set value []
kill @e[tag=temp_storage]

execute store result score @s d.XpLevels run data get storage designer:temp main.xp
function designer:player_storage/restore_xp

function designer:tp with storage designer:temp main.Pos
