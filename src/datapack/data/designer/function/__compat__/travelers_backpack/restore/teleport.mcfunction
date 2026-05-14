
# Teleport the item

execute at @s as @e[type=minecraft:item,tag=INIT,tag=compat-tbackpack,limit=1]:
    tag @s remove INIT
    tp @s ~ ~1.1 ~