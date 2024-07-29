tellraw @s {"text": ">> odobunny first_quest_end.mcfunction invoked"}

execute at @s at @e[tag=odobunnyNPC, limit=1, sort=nearest] run playsound quests:common_bandaging player @a ~ ~ ~

scoreboard players set @s tcz_odobunny 1