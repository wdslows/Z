execute as @e[tag=transport] run function tcz_car_velocity:get_speed
execute as @e[tag=transport,scores={tcz_speed=9..}] at @s anchored feet positioned ^ ^ ^2 run function tcz_car_velocity:get_entity_under_transport

#Переписать
execute as @e[tag=transport] run function tcz_car_velocity:get_time

scoreboard players add #world_time tcz_time 1
execute if score #world_time tcz_time matches 41.. run scoreboard players set #world_time tcz_time 0