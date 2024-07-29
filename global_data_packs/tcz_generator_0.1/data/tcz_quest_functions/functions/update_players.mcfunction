execute at @s unless entity @e[type=horse, distance=0..5] run scoreboard players set @s is_horse_nearby 0
execute at @s if entity @e[type=horse, distance=0..5] run scoreboard players set @s is_horse_nearby 1

execute if entity @s[nbt=!{Inventory:[{id:"cgm:shotgun"}]}] run scoreboard players set @s is_had_shotgun 0
execute unless entity @s[nbt=!{Inventory:[{id:"cgm:shotgun"}]}] run scoreboard players set @s is_had_shotgun 1

execute at @s if score @e[tag=oramboPickup, limit=1, sort=nearest] tcz_health < #health_to_off tcz_num run scoreboard players set @s is_oram_p_fixed 0
execute at @s if score @e[tag=oramboPickup, limit=1, sort=nearest] tcz_health >= #health_to_off tcz_num run scoreboard players set @s is_oram_p_fixed 1