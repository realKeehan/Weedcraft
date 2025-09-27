## Handle the wandering drug dealer conversion logic
    #> Called by the "keehan:weedcraft/main" function every tick

    execute as @e[type=minecraft:wandering_trader,tag=!weedcraft.drug_dealer,sort=random,limit=1] if predicate keehan:drug_dealer_conversion_chance run function keehan:weedcraft/generic/drug_dealer_init
