## Handle the wandering drug dealer conversion logic
    #> Called by the "keehan:weedcraft/main" function every tick

    execute as @e[type=minecraft:wandering_trader,tag=!weedcraft.drug_dealer] run function keehan:weedcraft/generic/drug_dealer_init
