execute on target at @s run playsound minecraft:entity.villager.work_fletcher block @a ~ ~ ~ 1 2
execute on target at @s run playsound minecraft:ui.toast.in master @a ~ ~ ~ 5 2
execute on target at @s run playsound minecraft:block.bamboo_wood_button.click_on block @s ~ ~ ~ 1 1
execute on target run function designer:show_plot_dialog
data remove entity @s interaction
