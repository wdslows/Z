scoreboard players set #tmp_is_exist_npcs_to_announce tcz_quest_data 0

execute if score #is_finded tcz_vlaylam matches 1 run scoreboard players set #tmp_is_exist_npcs_to_announce tcz_quest_data 1
execute if score #is_finded tcz_shurik matches 1 run scoreboard players set #tmp_is_exist_npcs_to_announce tcz_quest_data 1
execute if score #is_finded tcz_orambo matches 1 run scoreboard players set #tmp_is_exist_npcs_to_announce tcz_quest_data 1
execute if score #is_finded tcz_odobunny matches 1 run scoreboard players set #tmp_is_exist_npcs_to_announce tcz_quest_data 1

execute if score #tmp_is_exist_npcs_to_announce tcz_quest_data matches 0 run function tcz_quest_functions:technical/none_npcs_to_announce
execute if score #tmp_is_exist_npcs_to_announce tcz_quest_data matches 1 run function tcz_quest_functions:technical/announce_npcs