function tcz_quest_functions:odobunny/duplicate_check

execute if score #stroll_timer tcz_odobunny matches 0 run function tcz_quest_functions:odobunny/stroll_end
execute if score #stroll_timer tcz_odobunny matches 1.. run function tcz_quest_functions:odobunny/stroll_tick