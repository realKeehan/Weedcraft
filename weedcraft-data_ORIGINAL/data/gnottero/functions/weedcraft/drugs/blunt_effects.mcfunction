## Apply blunt effects to the player and revoke the advancement
    #> Called by the "gnottero:utils/player_ate_blunt" advancement

    # Apply all the effects to the player
    # Shorter term effects
    effect give @s minecraft:blindness 3 5 true
    effect give @s minecraft:levitation 3 1 true
    effect give @s minecraft:nausea 10 1 true

    # Longer effects
    effect give @s minecraft:resistance 25 1 true
    effect give @s minecraft:hunger 25 1 true
    effect give @s minecraft:slowness 25 1 true
    effect give @s minecraft:slow_falling 25 1 true
    effect give @s minecraft:mining_fatigue 25 1 true

    # Revoke the "gnottero:utils/player_ate_blunt" advancement
    advancement revoke @s only gnottero:utils/player_ate_blunt

    # Set the drug score to 500
    scoreboard players set @s gn.blunt 500

    # Call the "gnottero:weedcraft/generic/main" function
    function gnottero:weedcraft/generic/main