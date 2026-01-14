execute if entity @s[y_rotation=-45..45] positioned ~-25 ~-2000 ~-25 run return run function designer:designers_table/place/nested_return_0
execute if entity @s[y_rotation=45..135] positioned ~-25 ~-2000 ~-25 run return run function designer:designers_table/place/nested_return_1
execute if entity @s[y_rotation=135..-135] run return run function designer:designers_table/place/nested_return_2
execute if entity @s[y_rotation=-135..-45] positioned ~-25 ~-2000 ~-25 run return run function designer:designers_table/place/nested_return_3
