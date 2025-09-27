## Configure a wandering trader to act as the Weedcraft drug dealer
    #> Called by the "keehan:weedcraft/generic/drug_dealer_tick" function

    # Mark the trader so it is not processed twice
    tag @s add weedcraft.drug_dealer

    # Keep the dealer in the world and brand the name
    data modify entity @s PersistenceRequired set value 1b
    data modify entity @s DespawnDelay set value 2147483647
    data modify entity @s CustomName set value '{"text":"Wandering Dealer","color":"dark_green","bold":true}'
    data modify entity @s CustomNameVisible set value 1b

    # Define the dealer's custom trade list
    data modify entity @s Offers set value {Level:1,Recipes:[
        {maxUses:3,uses:0,xp:0,specialPrice:0,priceMultiplier:0.0f,demand:0,rewardExp:0b,buy:{id:"minecraft:emerald",Count:8b},sell:{id:"minecraft:written_book",Count:1b,tag:{title:"Weedcraft Field Guide",author:"The Green Hand",resolved:1b,generation:0,pages:["{\"text\": \"\", \"extra\": [{\"text\": \"Weedcraft Field Guide\", \"bold\": true, \"color\": \"dark_green\"}, {\"text\": \"\\n\\nThese notes were copied from a dealer's ledger. Treat them with care and don't let the guards see the cover.\", \"color\": \"black\"}]}", "{\"text\": \"\", \"extra\": [{\"text\": \"Blunt\", \"bold\": true, \"color\": \"green\"}, {\"text\": \"\\nRecipe: Jigsaw + Paper + Magma Cream.\", \"color\": \"black\"}, {\"text\": \"\\nEffects: A dizzy ride of levitation, blindness, nausea, and a heavy crash of resistance, hunger, slowness, slow falling, and mining fatigue.\", \"color\": \"dark_gray\"}]}", "{\"text\": \"\", \"extra\": [{\"text\": \"Cocaine\", \"bold\": true, \"color\": \"white\"}, {\"text\": \"\\nRecipe: Repeating Command Block + Sugar + Charcoal.\", \"color\": \"black\"}, {\"text\": \"\\nEffects: Blinding rush with speed, haste, jump boost, but the unluck and wither bite back hard.\", \"color\": \"dark_gray\"}]}", "{\"text\": \"\", \"extra\": [{\"text\": \"Meth\", \"bold\": true, \"color\": \"aqua\"}, {\"text\": \"\\nRecipe: Command Block + Gunpowder + Bone Meal.\", \"color\": \"black\"}, {\"text\": \"\\nEffects: Buzzing strength, night vision, and a glow that won't hide you, paired with nausea and poison tremors.\", \"color\": \"dark_gray\"}]}", "{\"text\": \"\", \"extra\": [{\"text\": \"Mixed Shrooms\", \"bold\": true, \"color\": \"light_purple\"}, {\"text\": \"\\nRecipe: Chain Command Block + Structure Block + Nether Wart.\", \"color\": \"black\"}, {\"text\": \"\\nEffects: Nausea blooms into luck, night sight, regeneration, saturation, and a strange weakness in the limbs.\", \"color\": \"dark_gray\"}]}", "{\"text\": \"\", \"extra\": [{\"text\": \"Journal\", \"bold\": true, \"color\": \"dark_purple\"}, {\"text\": \"\\nTried every blend in one long night. The world rang like copper and my heart simply stopped. I woke up elsewhere, missing minutes I can't account for. Whatever really happens, I'm not writing it down here.\", \"color\": \"black\"}]}"]}}},
        {maxUses:16,uses:0,xp:0,specialPrice:0,priceMultiplier:0.05f,demand:0,rewardExp:0b,buy:{id:"minecraft:golden_apple",Count:1b,tag:{Blunt:1b,CustomModelData:1280201}},sell:{id:"minecraft:emerald",Count:3b}},
        {maxUses:16,uses:0,xp:0,specialPrice:0,priceMultiplier:0.05f,demand:0,rewardExp:0b,buy:{id:"minecraft:golden_apple",Count:1b,tag:{Cocaine:1b,CustomModelData:1280202}},sell:{id:"minecraft:emerald",Count:5b}},
        {maxUses:16,uses:0,xp:0,specialPrice:0,priceMultiplier:0.05f,demand:0,rewardExp:0b,buy:{id:"minecraft:golden_apple",Count:1b,tag:{Meth:1b,CustomModelData:1280200}},sell:{id:"minecraft:emerald",Count:4b}},
        {maxUses:16,uses:0,xp:0,specialPrice:0,priceMultiplier:0.05f,demand:0,rewardExp:0b,buy:{id:"minecraft:golden_apple",Count:1b,tag:{MixedShrooms:1b,CustomModelData:1280203}},sell:{id:"minecraft:emerald",Count:6b}}
    ]}
