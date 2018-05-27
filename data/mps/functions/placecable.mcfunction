execute as @e[name=placecable,type=horse] at @s unless entity @e[tag=mpsin,distance=..10,tag=unlinked] if block ~ ~-1 ~ iron_bars run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["mpsin","unlinked"]}
execute as @e[name=placecable,type=horse] at @s if entity @e[tag=mpsin,distance=..10,tag=unlinked] if block ~ ~-1 ~ iron_bars run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["mpsout","unlinked"]}

execute as @e[name=placecable,type=horse] at @s unless block ~ ~-1 ~ iron_bars run tellraw @p ["",{"text":"Please place this on top of an iron bar","color":"red"}]
execute as @e[name=placecable,type=horse] at @s unless block ~ ~-1 ~ iron_bars run give @p minecraft:horse_spawn_egg{display:{Name:"{\"text\":\"Cable\"}",Lore:["place at start and end of line"]},EntityTag:{CustomName:"{\"text\":\"placecable\"}",ActiveEffects:[{Id:14b,Amplifier:1b,Duration:1000,ShowParticles:0b}]}} 1

kill @e[name=placecable,type=horse]
