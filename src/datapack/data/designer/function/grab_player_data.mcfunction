# A function used to fix the issue when loosing player inventory

execute store result storage designer:temp player_storage.player_id int 1 run scoreboard players get @s tbs.ID

with storage designer:temp player_storage:
    $data modify storage theblackswitch:player_storage players[$(player_id)] set from storage theblackswitch:player_storage players[0]