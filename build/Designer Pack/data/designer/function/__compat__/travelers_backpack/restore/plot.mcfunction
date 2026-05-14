summon minecraft:item ~ ~ ~ {Tags: ["compat-tbackpack", "INIT"], Item: {id: "minecraft:poisonous_potato"}}
data modify entity @e[type=minecraft:item, tag=INIT, tag=compat-tbackpack, limit=1] Item merge from storage designer:temp plot.compat.travelers_backpack
kill @e[type=minecraft:item, tag=INIT, tag=compat-tbackpack, limit=1, nbt={Item: {id: "minecraft:poisonous_potato"}}]
