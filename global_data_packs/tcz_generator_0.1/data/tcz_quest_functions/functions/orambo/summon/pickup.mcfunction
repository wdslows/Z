execute as @e[tag=oramboPickupSpawnLoc,limit=1,sort=nearest,distance=0..20] at @s run setblock ~ ~ ~ structure_block{name: "tcz_generation:scripted/entity/cars/orambo_off_roader", mode: "LOAD", posX: -1, posY: 0, posZ: -1}
execute as @e[tag=oramboPickupSpawnLoc,limit=1,sort=nearest,distance=0..20] at @s run setblock ~ ~1 ~ redstone_block replace
execute as @e[tag=oramboPickupSpawnLoc,limit=1,sort=nearest,distance=0..20] at @s run setblock ~ ~1 ~ redstone_block replace
execute as @e[tag=oramboPickupSpawnLoc,limit=1,sort=nearest,distance=0..20] at @s run setblock ~ ~1 ~ air replace

execute as @e[tag=oramboPickupSpawnLoc,limit=1,sort=nearest,distance=0..20] run kill @s