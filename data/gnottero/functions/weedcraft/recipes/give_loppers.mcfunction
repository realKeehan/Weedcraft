## Revoke the "gnottero:utils/player_crafted_loppers" advancement, give the crafting result to the player, remove the recipe and take the recipe
    #> Called by the "gnottero:utils/player_crafted_loppers" advancement

    # Revoke the "gnottero:utils/player_crafted_loppers" advancement
    advancement revoke @s only gnottero:utils/player_crafted_loppers

    # Remove the knowledge book
    clear @s minecraft:knowledge_book 1

    # Give the right crafting result
    loot give @s loot gnottero:tools/loppers

    # Take the recipe
    recipe take @s gnottero:weedcraft/loppers