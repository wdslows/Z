tellraw @a [{"text": "odobunny закончила вылазку."}]

execute unless score #stroll_type tcz_odobunny matches 1..4 run tellraw @a [{"text": "Ошибка получения доли с вылазки. Не указан тип вылазки. Возможная причина возникновения: Рукожоп пытающийся вызвать функцию самостоятельно.", "color": "red"}]
execute if score #stroll_type tcz_odobunny matches 1 run scoreboard players set @e[type=player,tag=odobunny_stroll_starter] tcz_stroll_data 1
execute if score #stroll_type tcz_odobunny matches 2 run scoreboard players set @e[type=player,tag=odobunny_stroll_starter] tcz_stroll_data 2
execute if score #stroll_type tcz_odobunny matches 3 run scoreboard players set @e[type=player,tag=odobunny_stroll_starter] tcz_stroll_data 3
execute if score #stroll_type tcz_odobunny matches 4 run scoreboard players set @e[type=player,tag=odobunny_stroll_starter] tcz_stroll_data 4


execute as @e[type=player,tag=odobunny_stroll_starter] run tag @s remove odobunny_stroll_starter
scoreboard players set #stroll_timer tcz_odobunny -1
scoreboard players set #state tcz_odobunny 0
scoreboard players set #stroll_type tcz_odobunny 0