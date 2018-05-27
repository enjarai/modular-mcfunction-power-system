scoreboard objectives add MPScableidtemp dummy
scoreboard objectives add MPScableid dummy
execute as @e[tag=mpsin,tag=!tickdone] at @s run function mps:cabletarget
