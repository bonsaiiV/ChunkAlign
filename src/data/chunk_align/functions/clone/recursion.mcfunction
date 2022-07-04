# from chunk_align:clone/x, chunk_align:clone/y, chunk_align:clone/z, chunk_align:clone/recursion
# @s = armor_stand
# Scores:
# @s.__count = total count -> remaining count

summon armor_stand ~ ~ ~ {Tags:["chunk_align", "willBeOverwritten"],Marker:1b,Invisible:1b}
data modify entity @e[distance=..1,limit=1,type=armor_stand,tag=chunk_align] Tags set from entity @s Tags

scoreboard players remove @s __count 1
execute run scoreboard players operation @e[distance=..1,limit=1,type=armor_stand,tag=chunk_align] __count = @s __count
execute as @e[distance=..1,limit=1,type=armor_stand,tag=chunk_align] if score @s __count > 1 const positioned ^ ^ ^16 run function chunk_align:clone/recursion