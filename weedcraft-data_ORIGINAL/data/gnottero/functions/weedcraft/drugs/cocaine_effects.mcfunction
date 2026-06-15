## Apply cocaine effects to the player and revoke the advancement
    #> Called by the "gnottero:utils/player_ate_cocaine" advancement

    # Apply all the effects to the player
    # Shorter term effects
    effect give @s minecraft:blindness 12 1 true

    # Longer effects
    effect give @s minecraft:speed 25 2 true
    effect give @s minecraft:haste 25 2 true
    effect give @s minecraft:unluck 25 1 true
    effect give @s minecraft:wither 25 1 true
    effect give @s minecraft:jump_boost 25 1 true

    # Revoke the "gnottero:utils/player_ate_cocaine" advancement
    advancement revoke @s only gnottero:utils/player_ate_cocaine

    # Set the drug score to 500
    scoreboard players set @s gn.cocaine 500

    # Call the "gnottero:weedcraft/generic/main" function
    function gnottero:weedcraft/generic/main