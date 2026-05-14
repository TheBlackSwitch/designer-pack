data modify storage designer:temp player_storage.value set from entity @s "fabric:attachments"."travelersbackpack:travelers_backpack"
data modify storage designer:temp player_storage.path set value "main.compat.travelers_backpack"
function #theblackswitch:v2.0/player_storage/set_from with storage designer:temp player_storage
data remove storage designer:temp player_storage.value
