##################
#tcz_direction_x - Направление по X (-1 - отрицательное / 0 - отсутсвие движения / 1 - положительное)
#tcz_direction_z - Направление по Z (-1 - отрицательное / 0 - отсутсвие движения / 1 - положительное)
##################

execute if score @s tcz_x < @s tcz_prev_x run scoreboard players set @s tcz_direction_x -1
execute if score @s tcz_x = @s tcz_prev_x run scoreboard players set @s tcz_direction_x 0
execute if score @s tcz_x > @s tcz_prev_x run scoreboard players set @s tcz_direction_x 1

execute if score @s tcz_z < @s tcz_prev_z run scoreboard players set @s tcz_direction_z -1
execute if score @s tcz_z = @s tcz_prev_z run scoreboard players set @s tcz_direction_z 0
execute if score @s tcz_z > @s tcz_prev_z run scoreboard players set @s tcz_direction_z 1