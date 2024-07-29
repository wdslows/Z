execute at @s as @e[tag=oramboNPC, limit=1, sort=nearest] store result score #posX tcz_orambo run data get entity @s Pos[0]
execute at @s as @e[tag=oramboNPC, limit=1, sort=nearest] store result score #posY tcz_orambo run data get entity @s Pos[1]
execute at @s as @e[tag=oramboNPC, limit=1, sort=nearest] store result score #posZ tcz_orambo run data get entity @s Pos[2]

execute at @s run tellraw @a [{"text": "Найден сюжетный персонаж: "},{"text": "Лёха", "color": "yellow"},{"text": "! Позиция: "},{"text": "["},{"score":{"name":"#posX","objective":"tcz_orambo"}, "color": "yellow"},{"text": ", "},{"score":{"name":"#posY","objective":"tcz_orambo"}, "color": "yellow"},{"text": ", "},{"score":{"name":"#posZ","objective":"tcz_orambo"}, "color": "yellow"},{"text": "]"}]
scoreboard players set #is_finded tcz_orambo 1

execute at @s run tag @e[tag=oramboNPC, limit=1, sort=nearest] add oramboMeetPlayers

#Summon orambo car
execute at @s run function tcz_quest_functions:orambo/summon/pickup