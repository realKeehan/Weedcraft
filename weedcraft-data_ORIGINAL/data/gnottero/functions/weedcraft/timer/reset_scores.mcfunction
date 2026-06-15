## Reset all the drug scores for the player and kill the player
    #> Called by the "gnottero:weedcraft/timer/main" function

    # Reset all the scores
    scoreboard players set @s gn.blunt 0
    scoreboard players set @s gn.cocaine 0
    scoreboard players set @s gn.meth 0
    scoreboard players set @s gn.shrooms 0

    # Disable death messages
    gamerule showDeathMessages false

    # Kill the player
    kill @s

    # Grant the "gnottero:displayed/player_ate_all_drugs" advancement to the player
    advancement grant @s[advancements={gnottero:displayed/player_ate_all_drugs=false}] only gnottero:displayed/player_ate_all_drugs

    # Send a death message
    tellraw @a [{"selector":"@s"},{"text":" overdosed"}]

    # Enable death messages
    gamerule showDeathMessages true