execute at @s as @e[tag=shurikNPC, limit=1, sort=nearest] store result score #posX tcz_shurik run data get entity @s Pos[0]
execute at @s as @e[tag=shurikNPC, limit=1, sort=nearest] store result score #posY tcz_shurik run data get entity @s Pos[1]
execute at @s as @e[tag=shurikNPC, limit=1, sort=nearest] store result score #posZ tcz_shurik run data get entity @s Pos[2]

# 0 = За стеной
# 1 = Открыт
scoreboard players set #state tcz_shurik 0

execute at @s run tellraw @a [{"text": "Найден сюжетный персонаж: "},{"text": "Шурик", "color": "yellow"},{"text": "! Позиция: "},{"text": "["},{"score":{"name":"#posX","objective":"tcz_shurik"}, "color": "yellow"},{"text": ", "},{"score":{"name":"#posY","objective":"tcz_shurik"}, "color": "yellow"},{"text": ", "},{"score":{"name":"#posZ","objective":"tcz_shurik"}, "color": "yellow"},{"text": "]"}]
scoreboard players set #is_finded tcz_shurik 1


execute at @s run tag @e[tag=shurikNPC, limit=1, sort=nearest] add shurikMeetPlayers

function tcz_quest_functions:common/common_dialog