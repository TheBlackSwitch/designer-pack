
## Reset score
scoreboard players set @s d.cod_spawn_egg_use 0

#-------------------------------------------------------
## Create the block
#-------------------------------------------------------

# Place all parts of the block
execute align xyz run summon block_display ~ ~-1000 ~ {Passengers:[
    {id:"minecraft:block_display",Tags:["d.designers_table","INIT"],block_state:{Name:"minecraft:dark_oak_fence",Properties:{}},transformation:[0.5000f,0.0000f,0.0000f,-0.1250f,0.0000f,0.5000f,0.0000f,0.1250f,0.0000f,0.0000f,0.5000f,-0.1250f,0.0000f,0.0000f,0.0000f,1.0000f],teleport_duration:0},
    {id:"minecraft:block_display",Tags:["d.designers_table","INIT"],block_state:{Name:"minecraft:dark_oak_fence",Properties:{}},transformation:[0.5000f,0.0000f,0.0000f,0.6250f,0.0000f,0.5000f,0.0000f,0.1250f,0.0000f,0.0000f,0.5000f,-0.1250f,0.0000f,0.0000f,0.0000f,1.0000f],teleport_duration:0},
    {id:"minecraft:block_display",Tags:["d.designers_table","INIT"],block_state:{Name:"minecraft:dark_oak_fence",Properties:{}},transformation:[0.5000f,0.0000f,0.0000f,0.6250f,0.0000f,0.5000f,0.0000f,0.1250f,0.0000f,0.0000f,0.5000f,0.6250f,0.0000f,0.0000f,0.0000f,1.0000f],teleport_duration:0},
    {id:"minecraft:block_display",Tags:["d.designers_table","INIT"],block_state:{Name:"minecraft:dark_oak_fence",Properties:{}},transformation:[0.5000f,0.0000f,0.0000f,-0.1250f,0.0000f,0.5000f,0.0000f,0.1250f,0.0000f,0.0000f,0.5000f,0.6250f,0.0000f,0.0000f,0.0000f,1.0000f],teleport_duration:0},
    {id:"minecraft:block_display",Tags:["d.designers_table","INIT"],block_state:{Name:"minecraft:dark_oak_fence_gate",Properties:{facing:"east",in_wall:"false",open:"false"}},transformation:[0.3500f,0.0000f,0.0000f,-0.0625f,0.0000f,0.3500f,0.0000f,0.0625f,0.0000f,0.0000f,0.3500f,0.1875f,0.0000f,0.0000f,0.0000f,1.0000f],teleport_duration:0},
    {id:"minecraft:block_display",Tags:["d.designers_table","INIT"],block_state:{Name:"minecraft:dark_oak_fence_gate",Properties:{facing:"east",in_wall:"false",open:"false"}},transformation:[0.3500f,0.0000f,0.0000f,-0.0625f,0.0000f,0.3500f,0.0000f,0.0625f,0.0000f,0.0000f,0.3500f,0.5000f,0.0000f,0.0000f,0.0000f,1.0000f],teleport_duration:0},
    {id:"minecraft:block_display",Tags:["d.designers_table","INIT"],block_state:{Name:"minecraft:dark_oak_fence_gate",Properties:{facing:"east",in_wall:"false",open:"false"}},transformation:[0.3500f,0.0000f,0.0000f,0.7119f,0.0000f,0.3500f,0.0000f,0.0625f,0.0000f,0.0000f,0.3500f,0.1875f,0.0000f,0.0000f,0.0000f,1.0000f],teleport_duration:0},
    {id:"minecraft:block_display",Tags:["d.designers_table","INIT"],block_state:{Name:"minecraft:dark_oak_fence_gate",Properties:{facing:"east",in_wall:"false",open:"false"}},transformation:[0.3500f,0.0000f,0.0000f,0.7119f,0.0000f,0.3500f,0.0000f,0.0625f,0.0000f,0.0000f,0.3500f,0.5000f,0.0000f,0.0000f,0.0000f,1.0000f],teleport_duration:0},
    {id:"minecraft:block_display",Tags:["d.designers_table","INIT"],block_state:{Name:"minecraft:polished_deepslate_slab",Properties:{type:"bottom"}},transformation:[0.2500f,0.0000f,0.0000f,0.0000f,0.0000f,0.2500f,0.0000f,0.0000f,0.0000f,0.0000f,0.2500f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f],teleport_duration:0},
    {id:"minecraft:block_display",Tags:["d.designers_table","INIT"],block_state:{Name:"minecraft:polished_deepslate_slab",Properties:{type:"bottom"}},transformation:[0.2500f,0.0000f,0.0000f,0.7500f,0.0000f,0.2500f,0.0000f,0.0000f,0.0000f,0.0000f,0.2500f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f],teleport_duration:0},
    {id:"minecraft:block_display",Tags:["d.designers_table","INIT"],block_state:{Name:"minecraft:polished_deepslate_slab",Properties:{type:"bottom"}},transformation:[0.2500f,0.0000f,0.0000f,0.0000f,0.0000f,0.2500f,0.0000f,0.0000f,0.0000f,0.0000f,0.2500f,0.7500f,0.0000f,0.0000f,0.0000f,1.0000f],teleport_duration:0},
    {id:"minecraft:block_display",Tags:["d.designers_table","INIT"],block_state:{Name:"minecraft:polished_deepslate_slab",Properties:{type:"bottom"}},transformation:[0.2500f,0.0000f,0.0000f,0.7500f,0.0000f,0.2500f,0.0000f,0.0000f,0.0000f,0.0000f,0.2500f,0.7500f,0.0000f,0.0000f,0.0000f,1.0000f],teleport_duration:0},
    {id:"minecraft:block_display",Tags:["d.designers_table","INIT"],block_state:{Name:"minecraft:barrel",Properties:{facing:"down",open:"false"}},transformation:[0.9500f,0.0000f,0.0000f,0.0253f,0.0000f,0.0625f,0.0000f,0.6013f,0.0000f,0.0000f,0.9500f,0.0217f,0.0000f,0.0000f,0.0000f,1.0000f],teleport_duration:0},
    {id:"minecraft:block_display",Tags:["d.designers_table","INIT"],block_state:{Name:"minecraft:dark_oak_trapdoor",Properties:{facing:"east",half:"bottom",open:"false"}},transformation:[1.0000f,0.0000f,0.0000f,0.0000f,0.0000f,0.5000f,0.0000f,0.5625f,0.0000f,0.0000f,1.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f],teleport_duration:0},
    {id:"minecraft:item_display",Tags:["d.designers_table","INIT"],item:{id:"minecraft:light_blue_dye",count:1},item_display:"none",transformation:[0.2500f,0.0000f,0.0000f,0.1875f,0.0000f,-0.0000f,-0.2500f,0.6876f,0.0000f,0.2500f,-0.0000f,0.8451f,0.0000f,0.0000f,0.0000f,1.0000f],teleport_duration:0},
    {id:"minecraft:block_display",Tags:["d.designers_table","INIT"],block_state:{Name:"minecraft:white_concrete",Properties:{}},transformation:[0.2898f,0.0000f,0.1294f,0.5000f,0.0000f,0.0400f,0.0000f,0.6251f,-0.0776f,0.0000f,0.4830f,0.1875f,0.0000f,0.0000f,0.0000f,1.0000f],teleport_duration:0},
    {id:"minecraft:block_display",Tags:["d.designers_table","INIT"],block_state:{Name:"minecraft:white_concrete",Properties:{}},transformation:[0.3000f,0.0000f,0.0000f,0.4375f,0.0000f,0.0400f,0.0000f,0.6325f,0.0000f,0.0000f,0.5000f,0.1875f,0.0000f,0.0000f,0.0000f,1.0000f],teleport_duration:0},
    {id:"minecraft:block_display",Tags:["d.designers_table","INIT"],block_state:{Name:"minecraft:light_gray_concrete",Properties:{}},transformation:[0.3100f,0.0000f,0.0000f,0.4334f,0.0000f,0.0400f,0.0000f,0.6300f,0.0000f,0.0000f,0.5100f,0.1824f,0.0000f,0.0000f,0.0000f,1.0000f],teleport_duration:0},
    {id:"minecraft:block_display",Tags:["d.designers_table","INIT"],block_state:{Name:"minecraft:lantern",Properties:{hanging:"false"}},transformation:[0.3500f,0.0000f,0.0000f,0.6250f,0.0000f,0.3500f,0.0000f,0.6591f,0.0000f,0.0000f,0.3500f,0.6250f,0.0000f,0.0000f,0.0000f,1.0000f],teleport_duration:0},
    {id:"minecraft:item_display",Tags:["d.designers_table","INIT"],item:{id:"minecraft:black_dye",count:1},item_display:"none",transformation:[0.2165f,0.1250f,0.0000f,0.4375f,0.0000f,-0.0000f,-0.2500f,0.6886f,-0.1250f,0.2165f,-0.0000f,0.8750f,0.0000f,0.0000f,0.0000f,1.0000f],teleport_duration:0},
    {id:"minecraft:item_display",Tags:["d.designers_table","INIT"],item:{id:"minecraft:feather",count:1},item_display:"none",transformation:[0.1035f,0.3864f,0.0000f,0.2758f,0.0000f,-0.0000f,-0.4000f,0.6875f,-0.3864f,0.1035f,-0.0000f,0.3538f,0.0000f,0.0000f,0.0000f,1.0000f],teleport_duration:0},
    {id:"minecraft:block_display",Tags:["d.designers_table","INIT"],block_state:{Name:"minecraft:stripped_oak_log",Properties:{axis:"x"}},transformation:[0.5400f,0.0000f,0.0000f,0.0366f,0.0000f,0.0200f,0.0000f,0.6608f,0.0000f,0.0000f,0.2500f,0.7154f,0.0000f,0.0000f,0.0000f,1.0000f],teleport_duration:0}
], Tags:["d.designers_table","d.root","INIT"],teleport_duration:0}

execute align xyz run summon interaction ~0.5005 ~ ~0.5005 {width:1.01,height:1.01,Tags:["d.designers_table"]}
setblock ~ ~ ~ barrier

#-------------------------------------------------------
## Handle Block Rotation
#-------------------------------------------------------

execute:
    execute if entity @s[y_rotation=-45..45] positioned ~-25 ~-2000 ~-25 run return:
        execute as @e[type=#designer:display_entity,tag=d.designers_table,tag=d.root,tag=INIT,dx=50,dy=4000,dz=50] at @s :
            tp @s ~0.001 ~1000.001 ~0.001
        # make sure this will generate as a function so the selector above will loop through 
        # all entities instead of returning for the first (so there is absolutely no use of the return value :P)
        return 0

    execute if entity @s[y_rotation=45..135] positioned ~-25 ~-2000 ~-25 run return:
        execute as @e[type=#designer:display_entity,tag=d.designers_table,tag=INIT,dx=50,dy=4000,dz=50]:
            data modify entity @s Rotation[0] set value 90f
            execute if entity @s[tag=d.root] at @s run tp @s ~0.999 ~1000.001 ~0.001
        # make sure this will generate as a function so the selector above will loop through 
        # all entities instead of returning for the first (so there is absolutely no use of the return value :P)
        return 1

    execute if entity @s[y_rotation=135..-135] run return:
        execute positioned ~-25 ~-2000 ~-25 as @e[type=#designer:display_entity,tag=d.designers_table,tag=INIT,dx=50,dy=4000,dz=50]:
            execute if entity @s[tag=d.root] at @s run tp @s ~0.999 ~1000.001 ~0.999
            data modify entity @s Rotation[0] set value 180f
        # make sure this will generate as a function so the selector above will loop through 
        # all entities instead of returning for the first (so there is absolutely no use of the return value :P)
        return 2

    execute if entity @s[y_rotation=-135..-45] positioned ~-25 ~-2000 ~-25 run return:
        execute as @e[type=#designer:display_entity,tag=d.designers_table,tag=INIT,dx=50,dy=4000,dz=50]:
            execute if entity @s[tag=d.root] at @s run tp @s ~0.001 ~1000.001 ~0.999
            data modify entity @s Rotation[0] set value 270f
        # make sure this will generate as a function so the selector above will loop through 
        # all entities instead of returning for the first (so there is absolutely no use of the return value :P)
        return 3

#-------------------------------------------------------
## SFX
#-------------------------------------------------------

# Sound Effects
playsound minecraft:block.wood.break block @a ~ ~ ~ 1 0.8
playsound minecraft:block.smithing_table.use block @a ~ ~ ~ 0.5 1.2

#-------------------------------------------------------
## Clean things up
#-------------------------------------------------------

# remove init tag
tag @e[type=#designer:display_entity,tag=d.designers_table,tag=INIT,distance=..25] remove INIT

# kill the marker
kill @n[type=marker,tag=d.designers_table.place]
