# from player

summon armor_stand ~ ~ ~ {Tags:["cls"],Marker:1b,Invisible:1b}
execute as @e[tag=cls,distance=..1] run function chunk_align:align
execute as @e[tag=cls] at @s run fill ~ 224 ~ ~15 255 ~15 air
execute as @e[tag=cls] at @s run fill ~ 192 ~ ~15 223 ~15 air
execute as @e[tag=cls] at @s run fill ~ 160 ~ ~15 191 ~15 air
execute as @e[tag=cls] at @s run fill ~ 128 ~ ~15 159 ~15 air
execute as @e[tag=cls] at @s run fill ~ 96 ~ ~15 127 ~15 air
execute as @e[tag=cls] at @s run fill ~ 64 ~ ~15 95 ~15 air
execute as @e[tag=cls] at @s run fill ~ 32 ~ ~15 63 ~15 air
execute as @e[tag=cls] at @s run fill ~ 0 ~ ~15 31 ~15 air
kill @e[tag=cls]
