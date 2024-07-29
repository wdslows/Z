tellraw @s [{"text": "Координаты известных персонажей:"}]

############################
# ВЛЭЙЛАМ
############################
#На базе
execute if score #is_finded tcz_vlaylam matches 1 run tellraw @s [{"text": "Влэйлам", "color": "yellow"},{"text": ": ["},{"score":{"name":"#posX","objective":"tcz_vlaylam"}, "color": "yellow"},{"text": ", "},{"score":{"name":"#posY","objective":"tcz_vlaylam"}, "color": "yellow"},{"text": ", "},{"score":{"name":"#posZ","objective":"tcz_vlaylam"}, "color": "yellow"},{"text": "]"}]


############################
# НАСТЯ
############################
#На базе
execute if score #is_finded tcz_odobunny matches 1 unless score #state tcz_odobunny matches 1 run tellraw @s [{"text": "Настя", "color": "yellow"},{"text": ": ["},{"score":{"name":"#posX","objective":"tcz_odobunny"}, "color": "yellow"},{"text": ", "},{"score":{"name":"#posY","objective":"tcz_odobunny"}, "color": "yellow"},{"text": ", "},{"score":{"name":"#posZ","objective":"tcz_odobunny"}, "color": "yellow"},{"text": "]"}]

#Вылазка
execute if score #is_finded tcz_odobunny matches 1 if score #state tcz_odobunny matches 1 run tellraw @s [{"text": "Настя", "color": "yellow"},{"text": ": [ВЫЛАЗКА]"}]


############################
# ШУРИК
############################
#На базе
execute if score #is_finded tcz_shurik matches 1 run tellraw @s [{"text": "Шурик", "color": "yellow"},{"text": ": ["},{"score":{"name":"#posX","objective":"tcz_shurik"}, "color": "yellow"},{"text": ", "},{"score":{"name":"#posY","objective":"tcz_shurik"}, "color": "yellow"},{"text": ", "},{"score":{"name":"#posZ","objective":"tcz_shurik"}, "color": "yellow"},{"text": "]"}]


############################
# ЛЁХА
############################
#На базе
execute if score #is_finded tcz_orambo matches 1 run tellraw @s [{"text": "Лёха", "color": "yellow"},{"text": ": ["},{"score":{"name":"#posX","objective":"tcz_orambo"}, "color": "yellow"},{"text": ", "},{"score":{"name":"#posY","objective":"tcz_orambo"}, "color": "yellow"},{"text": ", "},{"score":{"name":"#posZ","objective":"tcz_orambo"}, "color": "yellow"},{"text": "]"}]