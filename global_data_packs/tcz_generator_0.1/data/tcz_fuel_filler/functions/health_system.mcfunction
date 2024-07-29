execute if score @s tcz_health < #0 tcz_num run scoreboard players set @s tcz_health 0

execute if score @s tcz_health < #health_to_off tcz_num run function tcz_fuel_filler:health/off
execute if entity @s[tag=broken] if score @s tcz_health > #health_to_off tcz_num run function tcz_fuel_filler:health/on

################################
#         Система урона
################################

#execute store result score #after_damage tcz_num run data get entity @s Health
#execute if score #after_damage tcz_num < #max_health tcz_num run tag @s add give_damage
#
##{
#execute if entity @s[tag=give_damage] run execute store result score @s tcz_num run scoreboard players get #max_health tcz_num
#execute if entity @s[tag=give_damage] run scoreboard players operation @s tcz_num -= #after_damage tcz_num
#execute if entity @s[tag=give_damage] run scoreboard players operation @s tcz_health -= @s tcz_num
#execute if entity @s[tag=give_damage] run tag @s remove give_damage
#}

################################
#         Система регена
################################

data merge entity @s {Health:100f}
execute unless score @s tcz_health matches -1000..1000 run scoreboard players set @s tcz_health 0
execute if score @s tcz_health > #max_health tcz_num run execute store result score @s tcz_health run scoreboard players get #max_health tcz_num