execute if predicate tcz_fuel_filler:random run tag @s add with_health

scoreboard players operation @s tcz_health += #health_per_chance tcz_num

execute if score @s tcz_health >= #max_health tcz_num run tag @s add bigger
#{
execute if entity @s[tag=bigger] store result score @s tcz_health run scoreboard players get #max_health tcz_num
execute if entity @s[tag=bigger] run tag @s add with_health
execute if entity @s[tag=bigger] run tag @s remove bigger
#}
