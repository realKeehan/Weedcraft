## Revoke the "keehan:utils/player_crafted_meth" advancement, give the crafting result to the player, remove the recipe and take the recipe
    #> Called by the "keehan:utils/player_crafted_meth" advancement

    # Revoke the "keehan:utils/player_crafted_meth" advancement
    advancement revoke @s only keehan:utils/player_crafted_meth

    # Remove the knowledge book
    clear @s minecraft:knowledge_book 1

    # Give the right crafting result
    loot give @s loot keehan:drugs/crystal_meth

    # Take the recipe
    recipe take @s keehan:weedcraft/meth