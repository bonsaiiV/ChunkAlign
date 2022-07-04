# from #minecraft:load

scoreboard objectives add __pos dummy

scoreboard objectives add countX dummy
scoreboard objectives add countY dummy
scoreboard objectives add countZ dummy
scoreboard objectives add __count dummy

# to use numbers when entities are required
scoreboard objectives add const dummy
scoreboard players set 0 const 0
scoreboard players set 1 const 1
scoreboard players set 16 const 16