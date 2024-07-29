execute store result score @s tcz_fuel run data get entity @s RootVehicle.Entity.CurrentFuel


#Высота для самолетов
execute if entity @s[nbt={RootVehicle:{Entity:{Tags:["plane"]}}}] store result score #height tcz_num run data get entity @s Pos[1]
execute if entity @s[nbt={RootVehicle:{Entity:{Tags:["plane"]}}}] run scoreboard players operation #height tcz_num -= #63 tcz_num

#Самолеты
execute if entity @s[nbt={RootVehicle:{Entity:{Tags:["plane"]}}},nbt=!{RootVehicle:{Entity:{Tags:["broken"]}}}] at @s run title @s actionbar [{"text":"Топливо:"},{"score":{"name":"@s","objective":"tcz_fuel"},"color": "gold"},{"text": " Скорость:"},{"score":{"name":"@e[tag=transport,sort=nearest,limit=1]","objective":"tcz_speed"},"color": "gold"},{"text": " Высота:"},{"score":{"name":"#height","objective":"tcz_num"},"color":"gold"}]

####################################
#Наземный транспорт
####################################

#Обычно
execute if entity @s[nbt=!{RootVehicle:{Entity:{Tags:["plane"]}}},x_rotation=23..90,scores={tcz_fuel=100..}] unless entity @s[nbt={RootVehicle:{Entity:{Tags:["broken"]}}}] at @s run title @s actionbar [{"text":"Топливо:"},{"score":{"name":"@s","objective":"tcz_fuel"},"color": "gold"},{"text": " Скорость:"},{"score":{"name":"@e[tag=transport,sort=nearest,limit=1]","objective":"tcz_speed"},"color": "gold"}]

#Мало топлива
execute if entity @s[nbt=!{RootVehicle:{Entity:{Tags:["plane"]}}},x_rotation=23..90,scores={tcz_fuel=50..99}] unless entity @s[nbt={RootVehicle:{Entity:{Tags:["broken"]}}}] at @s run title @s actionbar [{"text":"Топливо:"},{"score":{"name":"@s","objective":"tcz_fuel"},"color": "red"},{"text": " Скорость:"},{"score":{"name":"@e[tag=transport,sort=nearest,limit=1]","objective":"tcz_speed"},"color": "gold"}]

#Очень мало топлива
execute if score #world_time tcz_time matches ..20 if entity @s[nbt=!{RootVehicle:{Entity:{Tags:["plane"]}}},x_rotation=23..90,scores={tcz_fuel=..49}] unless entity @s[nbt={RootVehicle:{Entity:{Tags:["broken"]}}}] at @s run title @s actionbar [{"text":"Топливо:"},{"score":{"name":"@s","objective":"tcz_fuel"},"color": "red"},{"text": " Скорость:"},{"score":{"name":"@e[tag=transport,sort=nearest,limit=1]","objective":"tcz_speed"},"color": "gold"}]
execute if score #world_time tcz_time matches 21.. if entity @s[nbt=!{RootVehicle:{Entity:{Tags:["plane"]}}},x_rotation=23..90,scores={tcz_fuel=..49}] unless entity @s[nbt={RootVehicle:{Entity:{Tags:["broken"]}}}] at @s run title @s actionbar [{"text":"Топливо:"},{"score":{"name":"@s","objective":"tcz_fuel"},"color": "gray"},{"text": " Скорость:"},{"score":{"name":"@e[tag=transport,sort=nearest,limit=1]","objective":"tcz_speed"},"color": "gold"}]

#Не туда смотрит
#execute if entity @s[nbt=!{RootVehicle:{Entity:{Tags:["plane"]}}}] unless entity @s[x_rotation=23..90] unless entity @s[nbt={RootVehicle:{Entity:{Tags:["broken"]}}}] run title @s actionbar [{"text": ""}]


####################################
#Поломанный транспорт
####################################

execute if entity @s[nbt={RootVehicle:{Entity:{Tags:["transport","broken"]}}},x_rotation=23..90] run title @s actionbar [{"text":"Топливо:"},{"score":{"name":"@s","objective":"tcz_fuel"},"color": "gold"},{"text": " Транспорт сломан!","color": "red"}]
execute if entity @s[nbt={RootVehicle:{Entity:{Tags:["transport","broken"]}}}] unless entity @s[x_rotation=23..90] run title @s actionbar [{"text": " Транспорт сломан!","color": "red"}]