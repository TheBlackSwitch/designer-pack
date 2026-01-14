## remove the blocks
execute align xyz positioned ~0.5 ~ ~0.5 run kill @e[type=interaction,distance=..0.1,limit=1,sort=nearest]
execute align xyz positioned ~ ~ ~ run kill @e[type=block_display,tag=d.designers_table,dy=0]
execute align xyz positioned ~ ~ ~ run kill @e[type=item_display,tag=d.designers_table,dy=0]
setblock ~ ~ ~ air


## Sound / particle effects
playsound minecraft:block.anvil.destroy block @a ~ ~ ~ 0.5 2
playsound minecraft:block.wood.break block @a ~ ~ ~ 1 0.8
execute align xyz run particle minecraft:block{block_state:"minecraft:spruce_planks"} ~0.5 ~0.5 ~0.5 0.3 0.3 0.3 1 50 force

