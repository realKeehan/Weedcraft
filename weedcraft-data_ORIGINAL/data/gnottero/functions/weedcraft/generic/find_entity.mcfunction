## Find the player that ate the Golden Apple and call the "" function to remove all the extra effects
    #> Called by the "gnottero:weedcraft/apply_effect" function

    #> Store the current gametime
    execute store result score #gn.gametime gn.cron_job run time query gametime

    # Call the "gnottero:weedcraft/remove_apple_effects" function as all the player with a matching score
    execute as @a if score @s gn.effects = #gn.gametime gn.cron_job run function gnottero:weedcraft/generic/remove_apple_effects