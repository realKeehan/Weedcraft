## Revoke the "keehan:utils/player_crafted_blunt" advancement, give the crafting result to the player, remove the recipe and take the recipe
    #> Called by the "keehan:utils/player_crafted_blunt" advancement

    # Revoke the "keehan:utils/player_crafted_blunt" advancement
    advancement revoke @s only keehan:utils/player_crafted_blunt

    # Remove the knowledge book
    clear @s minecraft:knowledge_book 1

    # Give the right crafting result
    loot give @s loot keehan:drugs/blunt

    # Take the recipe
    recipe take @s keehan:weedcraft/blunt