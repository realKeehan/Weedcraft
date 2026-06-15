## Spawn a wandering drug dealer at the executor's location
    #> Utility command: /function keehan:weedcraft/commands/spawn_drug_dealer

    # Summon a wandering trader already tagged as the dealer.
    # The tag must be present at spawn so the data-driven dealer trades
    # (villager_trade entries gated by merchant_predicate on this tag) roll for it,
    # and so the resource pack applies the dealer skin.
    summon minecraft:wandering_trader ~ ~ ~ {Tags:["weedcraft.drug_dealer","weedcraft.spawn_candidate"],DespawnDelay:2147483647,PersistenceRequired:1b}

    # Finish configuring the freshly summoned dealer
    execute as @e[type=minecraft:wandering_trader,tag=weedcraft.spawn_candidate,limit=1,sort=nearest] run function keehan:weedcraft/generic/drug_dealer_init

    # Remove the temporary spawn tag
    execute as @e[type=minecraft:wandering_trader,tag=weedcraft.spawn_candidate] run tag @s remove weedcraft.spawn_candidate
