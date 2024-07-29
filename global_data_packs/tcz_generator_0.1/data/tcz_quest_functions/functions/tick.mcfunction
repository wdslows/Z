execute as @e[tag=vlaylamNPC,tag=vlaylamMeetPlayers] run function tcz_quest_functions:vlaylam/tick
execute as @e[tag=odobunnyNPC,tag=odobunnyMeetPlayers] run function tcz_quest_functions:odobunny/tick
execute as @e[tag=shurikNPC,tag=shurikMeetPlayers] run function tcz_quest_functions:shurik/tick
execute as @e[tag=oramboNPC,tag=oramboMeetPlayers] run function tcz_quest_functions:orambo/tick

execute as @e[tag=shurikNPC] run function tcz_quest_functions:technical/limit_to_break

execute as @a unless score @s tcz_odobunny matches -1000..1000 run scoreboard players set @s tcz_odobunny 0
execute as @a unless score @s tcz_vlaylam matches -1000..1000 run scoreboard players set @s tcz_vlaylam 0
execute as @a unless score @s tcz_shurik matches -1000..1000 run scoreboard players set @s tcz_shurik 0
execute as @a unless score @s tcz_orambo matches -1000..1000 run scoreboard players set @s tcz_orambo 0

execute as @a run function tcz_quest_functions:update_players

execute if score #isQuestsAnnounced tcz_versions matches 0 run function tcz_quest_functions:common/version_announce

##################################################################################################
#
# Я вижу ты решил что ты программист, респектосик тебе, и в честь этого маленькое письмецо:
#
# Многих, вероятно, волнует, почему же эта версия так долго выходила... Для этого есть причины
# Во-первых мое психологическое здоровье, ютюб слишком пожирает силы, а я еще в унике учусь.
# Во-вторых, это слишком дрочно, не пойми меня неправильно, но делать 58 одинаковых действий (а именно столько диалогов на данный момент)
# (и обрабатывать 58 звуков) мега нудно, а я не привык таким заниматься :)
#
# Спасибо за озвучку:
# orambo
# vlaylam
# odobunny
# shurikworld
#
# Мораль:
# orambo
# vlaylam
#
# Постройки:
# Muxa
#
##################################################################################################