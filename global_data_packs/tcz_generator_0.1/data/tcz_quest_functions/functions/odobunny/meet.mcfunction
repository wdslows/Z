execute at @s as @e[tag=odobunnyNPC, limit=1, sort=nearest] store result score #posX tcz_odobunny run data get entity @s Pos[0]
execute at @s as @e[tag=odobunnyNPC, limit=1, sort=nearest] store result score #posY tcz_odobunny run data get entity @s Pos[1]
execute at @s as @e[tag=odobunnyNPC, limit=1, sort=nearest] store result score #posZ tcz_odobunny run data get entity @s Pos[2]

# 0 = Ожидает на базе
# 1 = На вылазке
scoreboard players set #state tcz_odobunny 0

execute at @s run tellraw @a [{"text": "Найден сюжетный персонаж: "},{"text": "Настя", "color": "yellow"},{"text": "! Позиция: "},{"text": "["},{"score":{"name":"#posX","objective":"tcz_odobunny"}, "color": "yellow"},{"text": ", "},{"score":{"name":"#posY","objective":"tcz_odobunny"}, "color": "yellow"},{"text": ", "},{"score":{"name":"#posZ","objective":"tcz_odobunny"}, "color": "yellow"},{"text": "]"}]
scoreboard players set #is_finded tcz_odobunny 1


execute at @s run tag @e[tag=odobunnyNPC, limit=1, sort=nearest] add odobunnyMeetPlayers

function tcz_quest_functions:common/common_dialog