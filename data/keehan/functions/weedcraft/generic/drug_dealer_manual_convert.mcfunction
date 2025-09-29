## Convert a wandering trader into a dealer when clicked with one of the custom drugs
    #> Called by the "keehan:utils/player_used_drug_on_wandering_trader" advancement

    # Mark the closest trader that hasn't been converted yet
    execute as @e[type=minecraft:wandering_trader,tag=!weedcraft.drug_dealer,sort=nearest,limit=1,distance=..3] run tag @s add weedcraft.manual_conversion_candidate

    # Convert the marked trader into a dealer
    execute as @e[tag=weedcraft.manual_conversion_candidate] run function keehan:weedcraft/generic/drug_dealer_init

    # Grant the advancement to the player if a trader was successfully converted
    execute if entity @e[tag=weedcraft.manual_conversion_candidate] run advancement grant @s only keehan:displayed/player_converted_wandering_trader

    # Clean up the temporary tag
    execute as @e[tag=weedcraft.manual_conversion_candidate] run tag @s remove weedcraft.manual_conversion_candidate

    # Reset the trigger advancement so the player can convert another trader
    advancement revoke @s only keehan:utils/player_used_drug_on_wandering_trader
