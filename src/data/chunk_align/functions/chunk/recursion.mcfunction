# from chunk_align:chunk/align_x, chunk_align:chunk/align_y, chunk_align:chunk/align_z, chunk_align:chunk/recursion
# @s = armor_stand

scoreboard players remove @s __pos 1
execute if score @s __pos = 0 const run tp @s ~ ~ ~ ~ ~
execute if score @s __pos > 0 const positioned ^ ^ ^-1 run function chunk_align:chunk/recursion
