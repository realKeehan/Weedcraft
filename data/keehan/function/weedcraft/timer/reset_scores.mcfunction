## Reset all the drug scores for the player and kill the player
    #> Called by the "keehan:weedcraft/timer/main" function

    # Reset all the scores
    scoreboard players set @s gn.blunt 0
    scoreboard players set @s gn.cocaine 0
    scoreboard players set @s gn.meth 0
    scoreboard players set @s gn.shrooms 0

    # Disable death messages
    gamerule show_death_messages false

    # Kill the player
    kill @s

    # Grant the "keehan:displayed/player_ate_all_drugs" advancement to the player
    advancement grant @s[advancements={keehan:displayed/player_ate_all_drugs=false}] only keehan:displayed/player_ate_all_drugs

    # Send a death message
    tellraw @a [{"selector":"@s"},{"text":" overdosed"}]

    # Enable death messages
    gamerule show_death_messages true
