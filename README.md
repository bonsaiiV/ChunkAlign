# ChunkAlign
A Datapack to align an armor stand to the chunk grid or any custom grid defined by scoreboards.

## Description
Aligns an armor stand with the chunk grid to have the chunk position (0.5, 0.5, 0.5).
Optionally you can set the alignment to whatever number above 0 you desire.

## Installation
Coming soon...

## Usage
1. Summon an armor stand with your tags.\
   `summon armor_stand ~ ~ ~ {Tags:["<your tag here>"],Marker:1b,Invisible:1b}`
2. Set scoreboards to your alignments if needed.
   If a scoreboard is not set it gets defaulted to 16 (1 Chunk).\
   `scoreboard players set @e[tag=<your tag here>,distance=..1] alignX <size along x>`
   `scoreboard players set @e[tag=<your tag here>,distance=..1] alignY <size along y>`
   `scoreboard players set @e[tag=<your tag here>,distance=..1] alignZ <size along z>`
3. Run `function chunk_align:align` as the armor stand.\
   `execute as @e[tag=<your tag here>,distance=..1] run function chunk_align:align`
4. Execute your functions as all armor stands with your custom tags.
   To utilize it's position execute it also at their respective position.\
   `execute as @e[tag=<your tag here>] at @s run <your command here>`
## Example
You can find an example datapack under the `example` folder.

## Contributing
Anyone is free to contribute but please take note of the style guide lines in [CONTRIBUTING.md](./CONTRIBUTING.md) or your pull request won't be accepted. Furthermore please keep the main point of this datapack in mind before adding unnessesary features which makes this datapack bloated.
