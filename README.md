# Weedcraft (Combined Pack)

A custom Minecraft **data pack + resource pack** that adds drug-themed farming, processing, and
consumables. This single folder contains **both** halves:

| Folder | Loaded as | Goes in |
| ------ | --------- | ------- |
| `data/` | Data pack | `<world>/datapacks/` |
| `assets/` | Resource pack | `resourcepacks/` (or `<world>/resources`) |

Minecraft's data-pack and resource-pack formats use **different scales**, and since 1.21.9 they use
`major.minor` numbers declared with `min_format` / `max_format`. This combo ships one `pack.mcmeta`
whose range brackets both sides, so the same folder loads as a data pack *and* a resource pack. Drop
the folder in **both** locations above.

> **Target version: Minecraft 26.1.2 (April 2026)**
>
> Verified formats for 26.1.2: **data pack `101.1`**, **resource pack `84.0`**. `pack.mcmeta` therefore
> declares `"min_format": [84, 0]` and `"max_format": [101, 1]`, which covers the resource format at the
> low end and the data format at the high end so neither loader rejects the pack. The pack uses current
> conventions throughout: data **components** (not NBT), the `minecraft:item_model` component for custom
> item models, and modern recipe/stack syntax.

## Getting Started

* Place the folder in your `datapacks/` folder **and** your `resourcepacks/` folder, then reload.
* On load the pack registers its scoreboards and announces successful setup in chat.
* The main function runs every tick to manage timers, effects, and safety checks.

## Quick Reference (the in-game basics)

![Basic Instructions](https://i.imgur.com/ajpdfXu.png)

> Transcribed from the basic-instructions image above so it also lives in the repo as text:

* **Chisel** — 1 stick in the middle, 2 iron above and below the stick. Mine an amethyst cluster with
  it to drop **Bottled Amethyst**.
* **Loppers** — 2 sticks in the bottom corners and 3 iron ingots completing an **"X"** pattern. Use on
  a 2-tall (large) fern to get **Weed**; use on mushrooms to get the special **Shredded Shrooms** of
  both types.
* **Pruning Machete** — wide iron head with a stick handle. Use on grown cocoa to turn the beans into
  **Coca Leaves** (the regular cocoa-bean loot still drops too).
* **Meth** — when the Chisel mines an amethyst cluster it drops Bottled Amethyst. Crafted with
  **Gunpowder + Bone Meal** in a crafting table it becomes **Crystal Meth**.
* **Cocaine** — use the Pruning Machete on cocoa so beans become Coca Leaves (regular loot still drops).
  Combine **Coca Leaves + Sugar + Charcoal** to get **Cocaine**.
* **Shrooms** — use Loppers on mushrooms to get shredded shrooms of both types. Craft
  **Red + Brown Shredded Shrooms + Nether Wart** to get a bag of **Mixed Shrooms**.
* **Weed → Blunt** — Loppers on a 2-tall fern give Weed; craft **Weed + Paper + Magma Cream** to get a
  **Blunt**.
* **Budding Amethyst** — surround a **Nether Star** with **Amethyst Blocks** to craft a real budding
  amethyst block for renewable crystals.

## Custom Tools & Harvesting

| Tool | Image | Crafting Pattern | Use |
| ---- | ----- | ---------------- | --- |
| **Chisel** | ![Chisel](https://i.imgur.com/8SvaEgX.png) | `·I· / ·S· / ·I·` — iron above and below a centered stick. | Mine amethyst clusters to bottle Bottled Amethyst. |
| **Loppers** | ![Loppers](https://i.imgur.com/ln3dE4n.png) | `I·I / ·I· / S·S` — an "X" of 3 iron with sticks in the bottom corners. | Trim large ferns → Weed, mushrooms → Shredded Shrooms. |
| **Pruning Machete** | ![Pruning Machete](https://i.imgur.com/XqYnrpE.png) | `III / ·I· / ·S·` — three iron across the top, iron then stick down the middle. | Slice mature cocoa for Coca Leaves while still yielding cocoa beans. |

Each tool recipe outputs a temporary **knowledge book** that the data pack immediately swaps for the
named tool (via a loot table) and then revokes, so the recipe must be re-discovered each time.

### Resource Drops

* **Bottled Amethyst** – Harvest amethyst clusters with the Chisel.
* **Weed** – Use Loppers on large ferns to collect Weed (and replantable Weed Plants).
* **Red & Brown Shredded Shrooms** – Clip mushrooms with Loppers.
* **Coca Leaves** – Cut fully grown cocoa pods with the Pruning Machete.

## Crafting Recipes

All drug and tool recipes are gated behind unlock-once knowledge books that the data pack converts
into the actual items. The custom ingredient items (Weed, Coca Leaves, Bottled Amethyst, Shredded
Shrooms) **are** the recipe inputs — they are reskinned vanilla items, so they slot into the vanilla
crafting grid normally.

| Product | Image | Recipe | Effects summary |
| ------- | ----- | ------ | --------------- |
| **Blunt** | ![Blunt](https://i.imgur.com/XGt6TXo.png) | Weed + Paper + Magma Cream (shapeless) | Come-up: levitation, blindness, nausea. Crash: resistance, slowness, hunger, slow falling, mining fatigue. |
| **Cocaine** | ![Cocaine](https://i.imgur.com/G6rUGKX.png) | Coca Leaves + Sugar + Charcoal (shapeless) | Brief blindness, then Speed III, Haste III, jump boost. Crash: unluck + wither. |
| **Crystal Meth** | ![Crystal Meth](https://i.imgur.com/rKtY5f7.png) | Bottled Amethyst + Gunpowder + Bone Meal (shapeless) | Strength + night vision; glowing tell; nausea/poison jitters; lingering Absorption III. |
| **Mixed Shrooms** | ![Mixed Shrooms](https://i.imgur.com/8ZrLIRx.png) | Red + Brown Shredded Shrooms + Nether Wart (shapeless) | Nausea first, then luck, night vision, regeneration, saturation. Crash: weakness. |
| **Budding Amethyst** | ![Budding Amethyst](https://i.imgur.com/11QNPjG.png) | Nether Star surrounded by Amethyst Blocks (shaped) | Crafts a real budding amethyst block for renewable crystal farming. |

## Drug Effects & Safety

* Each consumable is a reskinned golden apple that immediately strips the default
  absorption/regeneration so only the intended effects remain.
* After the apple effects are cleared, **Meth** users regain Absorption III for the duration to reflect
  a lingering high.
* On use, each drug sets a personal timer (score of 500) which decreases every tick (~25 seconds).
* Mixing **all four drugs at once is lethal** — the data pack resets your scores, kills you silently,
  and broadcasts that you overdosed.

## The Dealer & the Field Guide

The **Field Guide** is a custom-textured written book (item model `weedcraft:field_guide` via the
`minecraft:item_model` component) that explains the pack, embeds the crafting-grid images via the
`weedcraft:guide` bitmap font, and lists each drug's effects. It is **sold by The Dealer** (3 diamonds). The Dealer also **buys**
your drugs (Blunt 2◈, Cocaine 2◈, Meth 3◈, Mixed Shrooms 5◈) and sells a few supply items.

The Dealer is a wandering trader you place manually:

* `/function keehan:weedcraft/commands/spawn_drug_dealer` – summons the dealer at your location and
  configures the trades, name, persistence, and resource-pack skin tag.
* `/function keehan:weedcraft/commands/give_field_guide` – gives the Field Guide directly (for testing).

> The dealer's custom skin (`assets/minecraft/optifine/random/entity/…`) uses the OptiFine
> random-entity format, so it only shows with OptiFine (Forge/NeoForge) or Entity Texture Features
> (Fabric/Quilt) installed. Without one of those the dealer still works — it just keeps the vanilla
> wandering-trader look. The skin activates on wandering traders tagged `weedcraft.drug_dealer` (the
> spawn function applies this automatically).

## Advancements & Progression

Advancements track crafting each consumable, reward a final goal for making every drug, and a secret
feat for overdosing. They also act as hooks for swapping knowledge books with custom loot.

## What changed in this modernization

* Merged the resource pack into this repo as a single combo pack.
* Item models migrated from the removed `overrides`/`predicate` system to the **`minecraft:item_model`
  component**: each custom item carries `"minecraft:item_model": "weedcraft:<item>"`, resolved by an
  item-model definition in `assets/weedcraft/items/*.json`. No more `custom_model_data` dispatch on the
  base vanilla items.
* `pack.mcmeta` uses the 1.21.9+ `min_format` / `max_format` scheme with `major.minor` formats
  (`[84,0]`–`[101,1]`) for 26.1.2.
* Recipes use modern syntax (`result.id`, shorthand ingredients).
* Villager trade item stacks use the new `count` field (not the old `Count`).
* Advancement icons use `id` (not `item`); loot-table reference entries use `value` (not `name`).
* The Field Guide is a custom-textured book with embedded crafting-recipe images and accurate effects.
