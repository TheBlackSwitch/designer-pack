execute at @s positioned ~0.2 ~0.2 ~0.2 run function designer:designers_table/break
execute at @s on attacker if entity @s[gamemode=!creative] positioned ~0.2 ~0.2 ~0.2 align xyz run loot spawn ~0.5 ~0.5 ~0.5 loot designer:item/designers_table
