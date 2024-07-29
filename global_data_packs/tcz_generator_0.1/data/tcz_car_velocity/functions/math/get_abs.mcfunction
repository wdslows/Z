tag @s remove tcz_x_plus
tag @s remove tcz_x_minus

tag @s remove tcz_z_plus
tag @s remove tcz_z_minus

################################################
# X abs
################################################

execute if score @s tcz_x < #0 tcz_num if score @s tcz_prev_x >= #0 tcz_num run tag @s add tcz_x_plus
execute if score @s tcz_x >= #0 tcz_num if score @s tcz_prev_x < #0 tcz_num run tag @s add tcz_x_plus

execute if entity @s[tag=tcz_x_plus] if score @s tcz_x < #0 tcz_num run scoreboard players operation @s tcz_x *= #invert tcz_num
execute if entity @s[tag=tcz_x_plus] if score @s tcz_prev_x < #0 tcz_num run scoreboard players operation @s tcz_prev_x *= #invert tcz_num

execute if entity @s[tag=tcz_x_plus] store result score @s tcz_leg_x run scoreboard players get @s tcz_x
execute if entity @s[tag=tcz_x_plus] run scoreboard players operation @s tcz_leg_x += @s tcz_prev_x

##############################

execute if score @s tcz_x < #0 tcz_num if score @s tcz_prev_x < #0 tcz_num run tag @s add tcz_x_minus
execute if score @s tcz_x >= #0 tcz_num if score @s tcz_prev_x >= #0 tcz_num run tag @s add tcz_x_minus

execute if entity @s[tag=tcz_x_minus,tag=tcz_x_plus] run tag @s remove tcz_x_plus

execute if entity @s[tag=tcz_x_minus] run scoreboard players operation @s tcz_x *= #invert tcz_num
execute if entity @s[tag=tcz_x_minus] run scoreboard players operation @s tcz_prev_x *= #invert tcz_num

################################################
# Z abs
################################################

execute if score @s tcz_z < #0 tcz_num if score @s tcz_prev_z >= #0 tcz_num run tag @s add tcz_z_plus
execute if score @s tcz_z >= #0 tcz_num if score @s tcz_prev_z < #0 tcz_num run tag @s add tcz_z_plus

execute if entity @s[tag=tcz_z_plus] if score @s tcz_z < #0 tcz_num run scoreboard players operation @s tcz_z *= #invert tcz_num
execute if entity @s[tag=tcz_z_plus] if score @s tcz_prev_z < #0 tcz_num run scoreboard players operation @s tcz_prev_z *= #invert tcz_num

execute if entity @s[tag=tcz_z_plus] store result score @s tcz_leg_z run scoreboard players get @s tcz_z
execute if entity @s[tag=tcz_z_plus] run scoreboard players operation @s tcz_leg_z += @s tcz_prev_z

##############################

execute if score @s tcz_z < #0 tcz_num if score @s tcz_prev_z < #0 tcz_num run tag @s add tcz_z_minus
execute if score @s tcz_z >= #0 tcz_num if score @s tcz_prev_z >= #0 tcz_num run tag @s add tcz_z_minus

execute if entity @s[tag=tcz_z_minus,tag=tcz_z_plus] run tag @s remove tcz_z_plus

execute if entity @s[tag=tcz_z_minus] run scoreboard players operation @s tcz_z *= #invert tcz_num
execute if entity @s[tag=tcz_z_minus] run scoreboard players operation @s tcz_prev_z *= #invert tcz_num


################################################
# Debug
################################################

#tellraw @a [{"text": "Срабатывание. tick:"},{"score":{"name":"@s","objective":"tcz_time"}},{"text": " z:"},{"score":{"name":"@s","objective":"tcz_z"}},{"text": " prevZ:"},{"score":{"name":"@s","objective":"tcz_prev_z"}},{"text": " тэги: "},{"nbt":"Tags","entity":"@s"}]