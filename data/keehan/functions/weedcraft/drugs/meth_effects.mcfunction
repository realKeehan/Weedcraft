## Apply meth effects to the player and revoke the advancement
    #> Called by the "keehan:utils/player_ate_meth" advancement

    # Apply all the effects to the player
    # Shorter term effects
    effect give @s minecraft:nausea 6 1 true
    effect give @s minecraft:poison 6 1 true

    # Longer effects
    effect give @s minecraft:strength 25 1 true
    effect give @s minecraft:night_vision 25 1 true
    effect give @s minecraft:glowing 25 1 true

    # Revoke the "keehan:utils/player_ate_meth" advancement
    advancement revoke @s only keehan:utils/player_ate_meth

    # Add the drug tag
    tag @s add gn.meth

    # Set the drug score to 500
    scoreboard players set @s gn.meth 500

    # Call the "keehan:weedcraft/generic/main" function
    function keehan:weedcraft/generic/main