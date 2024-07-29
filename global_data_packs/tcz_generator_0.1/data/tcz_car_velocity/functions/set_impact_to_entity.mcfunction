#Здоровье
execute store result score #buf tcz_num run data get entity @s Health
execute store result score #damage_buf tcz_num run scoreboard players get @e[tag=transport,sort=nearest,scores={tcz_speed=9..},limit=1] tcz_speed
scoreboard players operation #damage_buf tcz_num /= #5 tcz_num
scoreboard players operation #buf tcz_num -= #damage_buf tcz_num
execute store result entity @s Health float 1 run scoreboard players get #buf tcz_num

#Звук
execute if score #is_collision_entity_sound_on tcz_num matches 1 run playsound minecraft:entity.player.hurt hostile @a ~ ~ ~ 0.7 0.5

#Коллизия
execute store result score #buf_x tcz_num run scoreboard players get @e[tag=transport,sort=nearest,scores={tcz_speed=9..},limit=1] tcz_leg_x
execute store result score #buf_z tcz_num run scoreboard players get @e[tag=transport,sort=nearest,scores={tcz_speed=9..},limit=1] tcz_leg_z

execute if entity @e[tag=transport,sort=nearest,scores={tcz_speed=9.., tcz_direction_x=-1 },limit=1] run scoreboard players operation #buf_x tcz_num *= #invert tcz_num
execute if entity @e[tag=transport,sort=nearest,scores={tcz_speed=9.., tcz_direction_z=-1 },limit=1] run scoreboard players operation #buf_z tcz_num *= #invert tcz_num

execute store result entity @s Motion[0] double 0.07 run scoreboard players get #buf_x tcz_num
execute store result entity @s Motion[2] double 0.07 run scoreboard players get #buf_z tcz_num

#Урон машине
scoreboard players operation @e[tag=transport,sort=nearest,scores={tcz_speed=9..},limit=1] tcz_health -= #damage_to_car tcz_num

#tellraw @a ["",{"selector":"@s","color":"gold"},": в меня въехали! мой моушн:",{"nbt":"Motion","entity":"@s","color":"dark_purple"},{"text": " . катеты: x:"},{"score":{"name":"@e[tag=transport,sort=nearest,scores={tcz_speed=9..},limit=1]","objective":"tcz_leg_x"}},{"text": " z:"},{"score":{"name":"@e[tag=transport,sort=nearest,scores={tcz_speed=9..},limit=1]","objective":"tcz_leg_z"}}]