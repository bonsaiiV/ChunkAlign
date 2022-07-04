# ChunkAlign
A Datapack to execute functions aligned to chunks.

## Description
Aligns an armor stand with the chunk grid to have the chunk position (0.5, 0.5, 0.5). Furthermore it expands the marked chunks (armor stand with custom tags) into a rectangle (box) and aligns it with the resulting grid.

## Installation
Coming soon...

## Usage
1. Summon an armor stand with your tags.\
   `summon armor_stand ~ ~ ~ {Tags:["<your tag here>"],Marker:1b,Invisible:1b}`
2. Set scoreboards to the dimensions of your box.
   If a scoreboard is not set it gets defaulted to 1.\
   `scoreboard players set @e[tag=<your tag here>,distance=..1] countX <size along x>`
   `scoreboard players set @e[tag=<your tag here>,distance=..1] countX <size along y>`
   `scoreboard players set @e[tag=<your tag here>,distance=..1] countX <size along z>`
3. Run `function chunk_align:align` as the armor stand.\
   `execute as @e[tag=<your tag here>,distance=..1] run function chunk_align:align`
4. Execute your functions as all armor stands with your custom tags.
   To utilize it's position execute it also at their respective position.\
   `execute as @e[tag=<your tag here>] at @s run <your command here>`
## Example
You can find an example datapack under the `example` folder.