execute if predicate tcz_fuel_filler:random run tag @s add fueled

scoreboard players operation @s tcz_fuel += #fuel_per_chance tcz_num
execute store result entity @s CurrentFuel float 1 run scoreboard players get @s tcz_fuel