

# Store the backpack data in the player storage
data modify storage designer:temp player_storage.value set from entity @s fabric:attachments.travelersbackpack:travelers_backpack
data modify storage designer:temp player_storage.path set value 'main.compat.travelers_backpack'
function #theblackswitch:__version__/player_storage/set_from with storage designer:temp player_storage
data remove storage designer:temp player_storage.value