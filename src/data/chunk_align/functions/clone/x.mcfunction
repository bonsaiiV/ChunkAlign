# from chunk_align:align
# @s = armor_stand

scoreboard players operation @e[type=armor_stand,tag=chunk_align] __count = @s countX
execute as @e[type=armor_stand,tag=chunk_align] at @s rotated -90 0 if score @s __count > 1 const positioned ^ ^ ^16 run function chunk_align:clone/recursion
