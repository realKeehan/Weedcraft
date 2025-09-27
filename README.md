# Weedcraft

A custom Minecraft datapack that adds drug-themed farming, processing, and consumables. This guide explains how to harvest new resources, craft specialized tools, and understand the effects (and risks!) of each product.

## Getting Started

* Install the datapack in your world's `datapacks` folder and reload the world.
* On load the pack registers the necessary scoreboards and announces successful setup in chat.
* The main function runs every tick to manage timers, effects, and safety checks.

## Custom Tools & Harvesting

| Tool | Crafting Ingredients | Use |
| ---- | -------------------- | --- |
| **Chisel**<br>![Chisel](https://i.imgur.com/8SvaEgX.png) | Iron ingots & stick in a vertical pattern. | Mine amethyst clusters to bottle Amethyst essence.
| **Loppers**<br>![Loppers](https://i.imgur.com/ln3dE4n.png) | Iron ingots surrounding a centered stick. | Trim large ferns and mushrooms to gather Weed and Shredded Shrooms.
| **Pruning Machete**<br>![Pruning Machete](https://i.imgur.com/XqYnrpE.png) | Wide iron head with a stick handle. | Slice mature cocoa pods for Coca Leaves while still yielding cocoa beans.

When crafted, these recipes output a temporary knowledge book which the datapack swaps for the named tool and removes the recipe so it must be re-discovered.

### Resource Drops

* **Bottled Amethyst** – Harvest amethyst clusters with the Chisel to bottle concentrated amethyst.
* **Weed** – Use Loppers on large ferns to collect custom Weed and extra ferns.
* **Red & Brown Shredded Shrooms** – Clip mushrooms with Loppers for shredded components.
* **Coca Leaves** – Cut fully grown cocoa pods with the Pruning Machete.

## Crafting Recipes

All drug and tool recipes are gated behind unlock-once knowledge books that the datapack converts into the actual items via loot tables.

| Product | Recipe | Notes |
| ------- | ------ | ----- |
| **Blunt**<br>![Blunt](https://i.imgur.com/XGt6TXo.png) | Weed + Paper + Magma Cream (shapeless). | Consuming applies mixed defensive and disorienting effects (see below).
| **Cocaine**<br>![Cocaine](https://i.imgur.com/G6rUGKX.png) | Coca Leaves + Sugar + Charcoal (shapeless). | Grants high-speed buffs with harsh side effects.
| **Crystal Meth**<br>![Meth](https://i.imgur.com/rKtY5f7.png) | Bottled Amethyst + Gunpowder + Bone Meal (shapeless). | Adds strength and night vision with brief nausea and poison.
| **Mixed Shrooms**<br>![Shrooms](https://i.imgur.com/8ZrLIRx.png) | Red Shredded Shrooms + Brown Shredded Shrooms + Nether Wart (shapeless). | Provides luck and regeneration after a nausea hit.
| **Budding Amethyst**<br>![Budding Amethyst](https://i.imgur.com/11QNPjG.png) | Nether Star surrounded by Amethyst Blocks (shaped). | Crafts an actual budding amethyst block for renewable crystal farming.

## Drug Effects & Safety

* Each consumable is a reskinned golden apple that immediately strips the default absorption/regeneration so only the intended effects remain.
* After the apple effects are cleared, Meth users regain Absorption III for the duration to reflect a lingering high.
* On use, each drug sets a personal timer (score of 500) which decreases every tick (~25 seconds).
* Having any active drug keeps the timer system running; when all scores expire the datapack stops tracking effects.
* Mixing **all four drugs at once is lethal**—the datapack resets your scores, kills you silently, and broadcasts that you overdosed.

## Advancements & Progression

Advancements track crafting each consumable and reward a final goal for making every drug, plus a secret feat for overdosing. They also act as hooks for swapping knowledge books with custom loot.

Use this reference to plan your farm, schedule your highs carefully, and avoid the fatal combination!

![Basic Instructions](https://i.imgur.com/ajpdfXu.png)
