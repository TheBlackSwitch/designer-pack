
## Sound Effects
execute on target at @s run playsound minecraft:entity.villager.work_fletcher block @a ~ ~ ~ 1 2
execute on target at @s run playsound minecraft:ui.toast.in master @a ~ ~ ~ 5 2
execute on target at @s run playsound minecraft:block.bamboo_wood_button.click_on block @s ~ ~ ~ 1 1

## Open the dialog menu
execute on target run dialog show @s designer:slect_plot

## Reset the interaction
data remove entity @s interaction