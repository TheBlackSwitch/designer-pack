

xp set @s 0 levels
xp set @s 0 points
execute if score @s d.XpLevels matches 32768.. run xp add @s 32768 levels
execute if score @s d.XpLevels matches 32768.. run scoreboard players remove @s d.XpLevels 32768
execute if score @s d.XpLevels matches 16384.. run xp add @s 16384 levels
execute if score @s d.XpLevels matches 16384.. run scoreboard players remove @s d.XpLevels 16384
execute if score @s d.XpLevels matches 8192.. run xp add @s 8192 levels
execute if score @s d.XpLevels matches 8192.. run scoreboard players remove @s d.XpLevels 8192
execute if score @s d.XpLevels matches 4096.. run xp add @s 4096 levels
execute if score @s d.XpLevels matches 4096.. run scoreboard players remove @s d.XpLevels 4096
execute if score @s d.XpLevels matches 2048.. run xp add @s 2048 levels
execute if score @s d.XpLevels matches 2048.. run scoreboard players remove @s d.XpLevels 2048
execute if score @s d.XpLevels matches 1024.. run xp add @s 1024 levels
execute if score @s d.XpLevels matches 1024.. run scoreboard players remove @s d.XpLevels 1024
execute if score @s d.XpLevels matches 512.. run xp add @s 512 levels
execute if score @s d.XpLevels matches 512.. run scoreboard players remove @s d.XpLevels 512
execute if score @s d.XpLevels matches 256.. run xp add @s 256 levels
execute if score @s d.XpLevels matches 256.. run scoreboard players remove @s d.XpLevels 256
execute if score @s d.XpLevels matches 128.. run xp add @s 128 levels
execute if score @s d.XpLevels matches 128.. run scoreboard players remove @s d.XpLevels 128
execute if score @s d.XpLevels matches 64.. run xp add @s 64 levels
execute if score @s d.XpLevels matches 64.. run scoreboard players remove @s d.XpLevels 64
execute if score @s d.XpLevels matches 32.. run xp add @s 32 levels
execute if score @s d.XpLevels matches 32.. run scoreboard players remove @s d.XpLevels 32
execute if score @s d.XpLevels matches 16.. run xp add @s 16 levels
execute if score @s d.XpLevels matches 16.. run scoreboard players remove @s d.XpLevels 16
execute if score @s d.XpLevels matches 8.. run xp add @s 8 levels
execute if score @s d.XpLevels matches 8.. run scoreboard players remove @s d.XpLevels 8
execute if score @s d.XpLevels matches 4.. run xp add @s 4 levels
execute if score @s d.XpLevels matches 4.. run scoreboard players remove @s d.XpLevels 4
execute if score @s d.XpLevels matches 2.. run xp add @s 2 levels
execute if score @s d.XpLevels matches 2.. run scoreboard players remove @s d.XpLevels 2
execute if score @s d.XpLevels matches 1.. run xp add @s 1 levels
execute if score @s d.XpLevels matches 1.. run scoreboard players remove @s d.XpLevels 1
execute if score @s d.XpLevels matches 1.. run function designer:player_storage/restore_xp
                                                                                                    
