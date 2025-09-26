## Apply mixed shrooms effects to the player and revoke the advancement
    #> Called by the "gnottero:utils/player_ate_mixed_shrooms" advancement

    # Apply all the effects to the player
    # Shorter term effects
    effect give @s minecraft:nausea 12 1 true

    # Longer effects
    effect give @s minecraft:luck 25 1 true
    effect give @s minecraft:night_vision 25 1 true
    effect give @s minecraft:weakness 25 1 true
    effect give @s minecraft:regeneration 25 1 true
    effect give @s minecraft:saturation 25 1 true

    # Revoke the "gnottero:utils/player_ate_mixed_shrooms" advancement
    advancement revoke @s only gnottero:utils/player_ate_mixed_shrooms

    # Set the drug score to 500
    scoreboard players set @s gn.shrooms 500

    # Call the "gnottero:weedcraft/generic/main" function
    function gnottero:weedcraft/generic/main