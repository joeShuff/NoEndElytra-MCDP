scoreboard players set @e[type=minecraft:item, nbt={Item:{id:"minecraft:emerald"}}] nee_isEmerald 0
scoreboard players set @e[type=minecraft:item, nbt={Item:{id:"minecraft:diamond"}}] nee_isDiamond 0

scoreboard players set @e[type=minecraft:bee] nee_beeHasDi 0
scoreboard players set @e[type=minecraft:bee] nee_beeHasEm 0

scoreboard players set @e[type=minecraft:item, nbt={Item:{id:"minecraft:emerald", Count:2b}}] nee_isEmerald 1
scoreboard players set @e[type=minecraft:item, nbt={Item:{id:"minecraft:diamond", Count:3b}}] nee_isDiamond 1

execute as @e[type=minecraft:item, scores={nee_isEmerald=0}] run data merge entity @s {Glowing:0}
execute as @e[type=minecraft:item, scores={nee_isDiamond=0}] run data merge entity @s {Glowing:0}

execute as @e[type=minecraft:item, scores={nee_isEmerald=1}] run data merge entity @s {Glowing:1}
execute as @e[type=minecraft:item, scores={nee_isDiamond=1}] run data merge entity @s {Glowing:1}

execute at @e[type=minecraft:item, scores={nee_isEmerald=1}] run scoreboard players set @e[type=minecraft:bee,limit=1,sort=nearest,distance=..5] nee_beeHasEm 1
execute at @e[type=minecraft:item, scores={nee_isDiamond=1}] run scoreboard players set @e[type=minecraft:bee,limit=1,sort=nearest,distance=..5] nee_beeHasDi 1

execute as @e[type=bee, scores={nee_beeHasDi=1, nee_beeHasEm=1}] run scoreboard players set @s nee_beeTrans 1

execute as @e[type=bee, scores={nee_beeTrans=1}] run kill @e[type=minecraft:item, scores={nee_isDiamond=1},limit=1,sort=nearest]
execute as @e[type=bee, scores={nee_beeTrans=1}] run kill @e[type=minecraft:item, scores={nee_isEmerald=1},limit=1,sort=nearest]

data merge entity @e[type=minecraft:bee, scores={nee_beeTrans=1..},limit=1] {NoAI:1}
scoreboard players add @e[type=minecraft:bee, scores={nee_beeTrans=1..}] nee_beeTrans 1

execute as @e[type=minecraft:bee, scores={nee_beeTrans=5}] run data merge entity @s {Glowing:1}
execute at @e[type=minecraft:bee, scores={nee_beeTrans=5}] run particle minecraft:happy_villager ~ ~1 ~ 1 1 1 1 12 force

execute as @e[type=minecraft:bee, scores={nee_beeTrans=10}] run data merge entity @s {Glowing:0}
execute as @e[type=minecraft:bee, scores={nee_beeTrans=15}] run data merge entity @s {Glowing:1}
execute at @e[type=minecraft:bee, scores={nee_beeTrans=15}] run particle minecraft:happy_villager ~ ~1 ~ 1 1 1 1 12 force

execute as @e[type=minecraft:bee, scores={nee_beeTrans=20}] run data merge entity @s {Glowing:0}
execute as @e[type=minecraft:bee, scores={nee_beeTrans=25}] run data merge entity @s {Glowing:1}
execute at @e[type=minecraft:bee, scores={nee_beeTrans=25}] run particle minecraft:happy_villager ~ ~1 ~ 1 1 1 1 12 force

execute as @e[type=minecraft:bee, scores={nee_beeTrans=30}] run data merge entity @s {Glowing:0}
execute as @e[type=minecraft:bee, scores={nee_beeTrans=35}] run data merge entity @s {Glowing:1}
execute at @e[type=minecraft:bee, scores={nee_beeTrans=35}] run particle minecraft:happy_villager ~ ~1 ~ 1 1 1 1 12 force

execute as @e[type=minecraft:bee, scores={nee_beeTrans=40}] run data merge entity @s {Glowing:0}
execute as @e[type=minecraft:bee, scores={nee_beeTrans=45}] run data merge entity @s {Glowing:1}
execute at @e[type=minecraft:bee, scores={nee_beeTrans=45}] run particle minecraft:happy_villager ~ ~1 ~ 1 1 1 1 12 force

execute at @e[type=minecraft:bee, scores={nee_beeTrans=45}] run summon firework_rocket ~ ~1 ~ {LifeTime:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:1,Explosions:[{Type:2,Flicker:1,Trail:1,Colors:[I;1973019,8073150,14602026],FadeColors:[I;1973019,8073150,14602026]}]}}}}

execute at @e[type=bee, scores={nee_beeTrans=50}] run summon minecraft:item ~ ~1 ~ {Motion:[0.0, 1.0, 0.0],Item:{id:"minecraft:elytra", Count:1b}}
execute as @e[type=bee, scores={nee_beeTrans=50}] run tp @s ~ ~-1000 ~