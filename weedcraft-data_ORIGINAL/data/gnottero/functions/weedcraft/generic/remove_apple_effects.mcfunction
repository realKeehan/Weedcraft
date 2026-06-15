## Remove all the Golden Apple effects
    #> Called by the "gnottero:weedcraft/find_entity" function

    # Clear all the extra effects
    effect clear @s minecraft:absorption
    effect clear @s minecraft:regeneration

    # Give back absorption if player meets conditions
    execute if entity @s[tag=gn.meth] run function gnottero:weedcraft/generic/give_special_effect