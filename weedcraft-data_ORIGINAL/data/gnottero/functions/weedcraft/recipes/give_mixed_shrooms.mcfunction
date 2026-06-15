## Revoke the "gnottero:utils/player_crafted_mixed_shrooms" advancement, give the crafting result to the player, remove the recipe and take the recipe
    #> Called by the "gnottero:utils/player_crafted_mixed_shrooms" advancement

    # Revoke the "gnottero:utils/player_crafted_mixed_shrooms" advancement
    advancement revoke @s only gnottero:utils/player_crafted_mixed_shrooms

    # Remove the knowledge book
    clear @s minecraft:knowledge_book 1

    # Give the right crafting result
    loot give @s loot gnottero:drugs/mixed_shrooms

    # Take the recipe
    recipe take @s gnottero:weedcraft/mixed_shrooms