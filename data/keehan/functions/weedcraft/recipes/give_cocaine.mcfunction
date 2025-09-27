## Revoke the "keehan:utils/player_crafted_cocaine" advancement, give the crafting result to the player, remove the recipe and take the recipe
    #> Called by the "keehan:utils/player_crafted_cocaine" advancement

    # Revoke the "keehan:utils/player_crafted_cocaine" advancement
    advancement revoke @s only keehan:utils/player_crafted_cocaine

    # Remove the knowledge book
    clear @s minecraft:knowledge_book 1

    # Give the right crafting result
    loot give @s loot keehan:drugs/cocaine

    # Take the recipe
    recipe take @s keehan:weedcraft/cocaine