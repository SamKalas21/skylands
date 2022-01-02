function skylands:establish_dimension_advancement/set_dimension
scoreboard objectives add utility.deaths deathCount
scoreboard players reset @a utility.deaths
schedule function skylands:second 1s
say loaded skylands
