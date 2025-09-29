## Spawn a wandering drug dealer at the executor's location
    #> Utility command similar to the recipe give commands

    # Summon a fresh wandering trader with a temporary tag
    summon minecraft:wandering_trader ~ ~ ~ {Tags:["weedcraft.spawn_candidate"]}

    # Initialize the summoned trader as a drug dealer
    execute as @e[type=minecraft:wandering_trader,tag=weedcraft.spawn_candidate,limit=1,sort=nearest] run function keehan:weedcraft/generic/drug_dealer_init

    # Remove the temporary tag now that initialization is complete
    execute as @e[type=minecraft:wandering_trader,tag=weedcraft.spawn_candidate] run tag @s remove weedcraft.spawn_candidate
