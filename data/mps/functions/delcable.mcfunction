execute as @e[tag=mpsin,tag=!unlinked] at @s unless block ~ ~-1 ~ iron_bars run scoreboard players operation @e[tag=mpsout,tag=!tickdone] MPScableidtemp = @s MPScableid
execute as @e[tag=mpsin,tag=!unlinked] at @s unless block ~ ~-1 ~ iron_bars run execute as @e[tag=mpsout,tag=!tickdone] run scoreboard players operation @s MPScableidtemp -= @s MPScableid
execute as @e[tag=mpsin,tag=!unlinked] at @s unless block ~ ~-1 ~ iron_bars run kill @e[tag=mpsout,scores={MPScableidtemp=0},tag=!tickdone,limit=1]
execute as @e[tag=mpsin,tag=!unlinked] at @s unless block ~ ~-1 ~ iron_bars run kill @s

execute as @e[tag=mpsout,tag=!unlinked] at @s unless block ~ ~-1 ~ iron_bars run scoreboard players operation @e[tag=mpsin,tag=!tickdone] MPScableidtemp = @s MPScableid
execute as @e[tag=mpsout,tag=!unlinked] at @s unless block ~ ~-1 ~ iron_bars run execute as @e[tag=mpsin,tag=!tickdone] run scoreboard players operation @s MPScableidtemp -= @s MPScableid
execute as @e[tag=mpsout,tag=!unlinked] at @s unless block ~ ~-1 ~ iron_bars run kill @e[tag=mpsin,scores={MPScableidtemp=0},tag=!tickdone,limit=1]
execute as @e[tag=mpsout,tag=!unlinked] at @s unless block ~ ~-1 ~ iron_bars run kill @s
