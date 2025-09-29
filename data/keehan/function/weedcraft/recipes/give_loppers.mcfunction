## Revoke the "keehan:utils/player_crafted_loppers" advancement, give the crafting result to the player, remove the recipe and take the recipe
    #> Called by the "keehan:utils/player_crafted_loppers" advancement

    # Revoke the "keehan:utils/player_crafted_loppers" advancement
    advancement revoke @s only keehan:utils/player_crafted_loppers

    # Remove the knowledge book
    clear @s minecraft:knowledge_book 1

    # Give the right crafting result
    loot give @s loot keehan:tools/loppers

    # Take the recipe
    recipe take @s keehan:weedcraft/loppers