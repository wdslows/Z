execute at @s as @e[tag=vlaylamNPC, limit=1, sort=nearest] store result score #posX tcz_vlaylam run data get entity @s Pos[0]
execute at @s as @e[tag=vlaylamNPC, limit=1, sort=nearest] store result score #posY tcz_vlaylam run data get entity @s Pos[1]
execute at @s as @e[tag=vlaylamNPC, limit=1, sort=nearest] store result score #posZ tcz_vlaylam run data get entity @s Pos[2]

execute at @s run tellraw @a [{"text": "Найден сюжетный персонаж: "},{"text": "Влэйлам", "color": "yellow"},{"text": "! Позиция: "},{"text": "["},{"score":{"name":"#posX","objective":"tcz_vlaylam"}, "color": "yellow"},{"text": ", "},{"score":{"name":"#posY","objective":"tcz_vlaylam"}, "color": "yellow"},{"text": ", "},{"score":{"name":"#posZ","objective":"tcz_vlaylam"}, "color": "yellow"},{"text": "]"}]
scoreboard players set #is_finded tcz_vlaylam 1


execute at @s run tag @e[tag=vlaylamNPC, limit=1, sort=nearest] add vlaylamMeetPlayers