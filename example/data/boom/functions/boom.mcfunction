# from player

summon armor_stand ~ ~ ~ {Tags:["BOOM"],Marker:1b,Invisible:1b}
scoreboard players set @e[tag=BOOM,distance=..1] countX 2
scoreboard players set @e[tag=BOOM,distance=..1] countY 2
scoreboard players set @e[tag=BOOM,distance=..1] countZ 2
execute as @e[tag=BOOM,distance=..1] run function chunk_align:align
execute as @e[tag=BOOM] at @s run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 tnt
execute as @e[tag=BOOM] at @s run setblock ~ ~ ~ redstone_block
kill @e[tag=BOOM]