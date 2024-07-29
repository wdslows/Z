scoreboard players set @s tcz_leg_x 0
scoreboard players set @s tcz_leg_z 0

#X
execute if entity @s[tag=tcz_x_plus] store result score @s tcz_leg_x run scoreboard players get @s tcz_x
execute if entity @s[tag=tcz_x_plus] run scoreboard players operation @s tcz_leg_x += @s tcz_prev_x

execute if entity @s[tag=tcz_x_minus] if score @s tcz_x > @s tcz_prev_x store result score @s tcz_leg_x run scoreboard players get @s tcz_x
execute if entity @s[tag=tcz_x_minus] if score @s tcz_x > @s tcz_prev_x run scoreboard players operation @s tcz_leg_x -= @s tcz_prev_x

execute if entity @s[tag=tcz_x_minus] if score @s tcz_prev_x > @s tcz_x store result score @s tcz_leg_x run scoreboard players get @s tcz_prev_x
execute if entity @s[tag=tcz_x_minus] if score @s tcz_prev_x > @s tcz_x run scoreboard players operation @s tcz_leg_x -= @s tcz_x

#tellraw @a [{"text": "выводx: "},{"score":{"name":"@s","objective":"tcz_leg_x"}}]

#Z
execute if entity @s[tag=tcz_z_plus] store result score @s tcz_leg_z run scoreboard players get @s tcz_z
execute if entity @s[tag=tcz_z_plus] run scoreboard players operation @s tcz_leg_z += @s tcz_prev_z

execute if entity @s[tag=tcz_z_minus] if score @s tcz_z > @s tcz_prev_z store result score @s tcz_leg_z run scoreboard players get @s tcz_z
execute if entity @s[tag=tcz_z_minus] if score @s tcz_z > @s tcz_prev_z run scoreboard players operation @s tcz_leg_z -= @s tcz_prev_z

execute if entity @s[tag=tcz_z_minus] if score @s tcz_prev_z > @s tcz_z store result score @s tcz_leg_z run scoreboard players get @s tcz_prev_z
execute if entity @s[tag=tcz_z_minus] if score @s tcz_prev_z > @s tcz_z run scoreboard players operation @s tcz_leg_z -= @s tcz_z

#tellraw @a [{"text": "выводz: "},{"score":{"name":"@s","objective":"tcz_leg_z"}}]

#title @a actionbar [{"text": "Катет X: "},{"score":{"name":"@s","objective":"tcz_leg_x"}},{"text": " Катет Z: "},{"score":{"name":"@s","objective":"tcz_leg_z"}}]

tag @s remove tcz_x_plus
tag @s remove tcz_x_minus
tag @s remove tcz_z_plus
tag @s remove tcz_z_minus