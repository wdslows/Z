#tcz_leg_x
#tcz_leg_z

#Квадрат катетов
execute store result score @s tcz_speed run scoreboard players get @s tcz_leg_x
scoreboard players operation @s tcz_speed *= @s tcz_speed
scoreboard players operation @s tcz_leg_z *= @s tcz_leg_z

#сложение катетов
scoreboard players operation @s tcz_speed += @s tcz_leg_z

#title @a actionbar [{"text": "Скорость: "},{"score":{"name":"@s","objective":"tcz_speed"}}]