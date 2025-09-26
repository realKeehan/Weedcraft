## Main function of the sub module
    #> Called by the "gnottero:weedcraft/main" function

    # Call the "gnottero:weedcraft/timer/decrease_value" function each tick
    execute if predicate gnottero:has_active_drugs run function gnottero:weedcraft/timer/decrease_value

    # If the player used all the drugs at the same time, kill the player
    execute if predicate gnottero:has_all_drugs run function gnottero:weedcraft/timer/reset_scores

    # If the player has all the required advancement, grant the "" advancement
    execute if entity @s[advancements={gnottero:displayed/player_crafted_blunt=true, gnottero:displayed/player_crafted_cocaine=true, gnottero:displayed/player_crafted_meth=true, gnottero:displayed/player_crafted_mixed_shrooms=true, gnottero:displayed/player_crafted_all_drugs=false}] run advancement grant @s only gnottero:displayed/player_crafted_all_drugs