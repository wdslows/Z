gamerule commandBlockOutput false
tellraw @a {"text": "tcz quests on. commandBlockOutput automatically turned to false."}

scoreboard objectives add tcz_versions dummy

scoreboard objectives add tcz_quest_data dummy
scoreboard objectives add tcz_stroll_data dummy

scoreboard objectives add tcz_vlaylam dummy
scoreboard objectives add tcz_shurik dummy
scoreboard objectives add tcz_orambo dummy
scoreboard objectives add tcz_odobunny dummy

scoreboard objectives add is_had_shotgun dummy
scoreboard objectives add is_horse_nearby dummy
scoreboard objectives add is_know_sg dummy
scoreboard objectives add is_oram_p_fixed dummy

scoreboard players set #questsMajor tcz_versions 0
scoreboard players set #questsMinor tcz_versions 1
scoreboard players set #isQuestsAnnounced tcz_versions 0

function tcz_quest_functions:config