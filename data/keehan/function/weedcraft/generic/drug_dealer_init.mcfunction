## Configure a wandering trader as the Weedcraft drug dealer
    #> Called by /function keehan:weedcraft/commands/spawn_drug_dealer
    #> Name + tag are set here (small, reliable). The tag drives the ETF dealer skin.

    tag @s add weedcraft.drug_dealer
    data modify entity @s PersistenceRequired set value true
    data modify entity @s DespawnDelay set value 2147483647
    data modify entity @s CustomName set value {"text":"The Dealer","color":"dark_green","bold":true}
    data modify entity @s CustomNameVisible set value true
    particle minecraft:smoke ~ ~1 ~ 0.3 0.5 0.3 0.02 20

    # Set the trade list (isolated so a problem here never blocks the name/skin above)
    function keehan:weedcraft/generic/drug_dealer_trades
