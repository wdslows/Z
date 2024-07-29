execute unless score #stroll_type tcz_odobunny matches 1..4 run tellraw @a [{"text": "Ошибка начала вылазки Насти. Не указан тип вылазки. Возможная причина возникновения: Рукожоп пытающийся вызвать функцию самостоятельно.", "color": "red"}]
execute if score #stroll_type tcz_odobunny matches 1 run tellraw @a [{"text": "Настя выдвинулась на вылазку за "},{"text": "Деталями", "color": "yellow"},{"text": ". Вылазка займет ","color": "white"},{"score": {"name": "#details_stroll_time", "objective": "tcz_odobunny"}, "color": "yellow"},{"text": " минут.", "color": "white"}]
execute if score #stroll_type tcz_odobunny matches 2 run tellraw @a [{"text": "Настя выдвинулась на вылазку за "},{"text": "Медикаментами", "color": "yellow"},{"text": ". Вылазка займет ","color": "white"},{"score": {"name": "#medicstuff_stroll_time", "objective": "tcz_odobunny"}, "color": "yellow"},{"text": " минут.", "color": "white"}]
execute if score #stroll_type tcz_odobunny matches 3 run tellraw @a [{"text": "Настя выдвинулась на вылазку за "},{"text": "Оружием", "color": "yellow"},{"text": ". Вылазка займет ","color": "white"},{"score": {"name": "#guns_stroll_time", "objective": "tcz_odobunny"}, "color": "yellow"},{"text": " минут.", "color": "white"}]
execute if score #stroll_type tcz_odobunny matches 4 run tellraw @a [{"text": "Настя выдвинулась на вылазку за "},{"text": "Едой", "color": "yellow"},{"text": ". Вылазка займет ","color": "white"},{"score": {"name": "#food_stroll_time", "objective": "tcz_odobunny"}, "color": "yellow"},{"text": " минут.", "color": "white"}]

tag @s add odobunny_stroll_starter

scoreboard players operation #tmp_stroll_time tcz_odobunny *= #20 tcz_num
scoreboard players operation #tmp_stroll_time tcz_odobunny *= #60 tcz_num

execute store result score #stroll_timer tcz_odobunny run scoreboard players get #tmp_stroll_time tcz_odobunny
scoreboard players set #tmp_stroll_time tcz_odobunny 0
scoreboard players set #state tcz_odobunny 1