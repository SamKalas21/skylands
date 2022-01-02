# skylands

##### crafting table #### 

execute as @e[tag=crafter] at @s run function skylands:crafter


#### check if crafting table is being placed ####

execute as @e[type=bat, tag=crafterspawn] at @s run function skylands:summon_crafter


##### send to skylands or overworld based on height

# teleport to skylands if y >= 320 in overworld
execute as @a at @s if entity @s[advancements={skylands:utility/in_overworld=true}, y=320, dy=1000] run function skylands:change_dimensions/overworld_to_skylands

# teleport to overworld if y <=-20 in skylands #####
execute as @a at @s if entity @s[advancements={skylands:utility/in_skylands=true}, y=-20, dy=-1000] run function skylands:change_dimensions/skylands_to_overworld


##### create armor stand and spawn town on it but only once ####
