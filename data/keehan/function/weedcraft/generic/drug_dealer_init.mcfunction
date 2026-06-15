## Configure a wandering trader to act as the Weedcraft drug dealer
    #> Called by /function keehan:weedcraft/commands/spawn_drug_dealer
    #>
    #> Trades are data-driven (Minecraft 26.1+): data/keehan/villager_trade/* bundled by
    #> data/keehan/trade_set/dealer.json, fed to wandering traders via
    #> data/minecraft/tags/trade_set/wandering_trader/common.json. Each trade's
    #> merchant_predicate requires the "weedcraft.drug_dealer" tag, so only this dealer offers them.

    # Make sure the dealer skin tag is present (also set at summon)
    tag @s add weedcraft.drug_dealer

    # Keep the dealer in the world and brand the name
    data modify entity @s PersistenceRequired set value true
    data modify entity @s DespawnDelay set value 2147483647
    data modify entity @s CustomName set value '{"text":"The Dealer","color":"dark_green","bold":true}'
    data modify entity @s CustomNameVisible set value true

    # Subtle smoke particle to mark the spawn
    particle minecraft:smoke ~ ~1 ~ 0.3 0.5 0.3 0.02 20
