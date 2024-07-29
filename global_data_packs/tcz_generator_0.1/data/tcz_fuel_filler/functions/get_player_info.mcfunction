execute store result score #buf_get_transport_uuid tcz_num run data get entity @s RootVehicle.Entity.UUID[0]

execute as @e[tag=transport] at @s if entity @p[distance=0..7] run execute store result score #bif_get_transport_uuid1 tcz_num run data get entity @s UUID[0]
execute as @e[tag=transport] at @s if entity @p[distance=0..7] run execute if score #buf_get_transport_uuid tcz_num = #bif_get_transport_uuid1 tcz_num run tag @s add find

execute if entity @s[x_rotation=23..90,y_rotation=30..-170] run function tcz_fuel_filler:get_info

