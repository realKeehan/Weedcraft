## Handle the effects removal part
    #> Called by the all the give_effects functions

    # Set all the needed cron jobs
    execute store result score @s gn.effects run time query gametime
    scoreboard players add @s gn.effects 1

    # Call the "keehan:weedcraft/generic/find_entity" function
    schedule function keehan:weedcraft/generic/find_entity 1t append