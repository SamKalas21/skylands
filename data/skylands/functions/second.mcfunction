##### Check dimension on new player join (or any player w no dimension advancements) #####
execute as @a if entity @s[advancements={skylands:utility/in_overworld=false, skylands:utility/in_nether=false, skylands:utility/in_end=false, skylands:utility/in_skylands=false, skylands:utility/in_other=false}] run function skylands:establish_dimension_advancement/set_dimension

##### Check dimension on player respawn #####

# the target selector is @e instead of @a because @a targets all players while @e only targets entities that are alive
execute as @e[scores={utility.deaths=1..}] run function skylands:establish_dimension_advancement/set_dimension
execute as @e[scores={utility.deaths=1..}] at @s run scoreboard players reset @s utility.deaths