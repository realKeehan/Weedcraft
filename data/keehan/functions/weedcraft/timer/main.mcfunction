## Main function of the sub module
    #> Called by the "keehan:weedcraft/main" function

    # Call the "keehan:weedcraft/timer/decrease_value" function each tick
    execute if predicate keehan:has_active_drugs run function keehan:weedcraft/timer/decrease_value

    # If the player used all the drugs at the same time, kill the player
    execute if predicate keehan:has_all_drugs run function keehan:weedcraft/timer/reset_scores

    # If the player has all the required advancement, grant the "" advancement
    execute if entity @s[advancements={keehan:displayed/player_crafted_blunt=true, keehan:displayed/player_crafted_cocaine=true, keehan:displayed/player_crafted_meth=true, keehan:displayed/player_crafted_mixed_shrooms=true, keehan:displayed/player_crafted_all_drugs=false}] run advancement grant @s only keehan:displayed/player_crafted_all_drugs
