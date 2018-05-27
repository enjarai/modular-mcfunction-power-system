scoreboard players operation @s MPScableid = #MPScableidmin MPScableid
scoreboard players operation @e[tag=mpsout,tag=unlinked,limit=1,sort=nearest,distance=..10] MPScableid = #MPScableidmin MPScableid
scoreboard players add #MPScableidmin MPScableid 1
tag @s remove unlinked
tag @e[tag=mpsout,tag=unlinked,limit=1,sort=nearest,distance=..10] remove unlinked
