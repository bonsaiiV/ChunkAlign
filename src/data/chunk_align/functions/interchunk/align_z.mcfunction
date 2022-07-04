# from chunk_align:align
# @s = armor_stand

execute store result score @s __pos run data get entity @s Pos[2]
scoreboard players operation @s __pos /= 16 const
scoreboard players operation @s __pos %= @s countZ
execute rotated 0 0 if score @s __pos > 0 const positioned ^ ^ ^-16 run function chunk_align:interchunk/recursion