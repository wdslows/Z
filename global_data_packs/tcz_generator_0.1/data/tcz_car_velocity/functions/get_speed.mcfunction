#Получение X оси
execute if entity @s[scores={tcz_time=10..}] store result score @s tcz_prev_x run scoreboard players get @s tcz_x
execute if entity @s[scores={tcz_time=10..}] store result score @s tcz_x run data get entity @s Pos[0]

#Получение Z оси
execute if entity @s[scores={tcz_time=10..}] store result score @s tcz_prev_z run scoreboard players get @s tcz_z
execute if entity @s[scores={tcz_time=10..}] store result score @s tcz_z run data get entity @s Pos[2]

#Найти направление транспорта
execute if entity @s[scores={tcz_time=10..}] run function tcz_car_velocity:math/get_direction

#Найти модуль координат
execute if entity @s[scores={tcz_time=5..}] run function tcz_car_velocity:math/get_abs

#Найти катеты осей
execute if entity @s[scores={tcz_time=5..}] run function tcz_car_velocity:math/get_leg

#Найти гипотенузу (линию движения)
execute if entity @s[scores={tcz_time=5..}] run function tcz_car_velocity:math/get_hypotenuse