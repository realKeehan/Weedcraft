## Decrease the value of the correct score each tick
    #> Called by the "keehan:weedcraft/timer/main" function

    # Check the correct predicate and decrease the corresponding score
    execute if predicate keehan:used_blunt run scoreboard players remove @s gn.blunt 1
    execute if predicate keehan:used_cocaine run scoreboard players remove @s gn.cocaine 1
    execute if predicate keehan:used_meth run scoreboard players remove @s gn.meth 1
    execute if predicate keehan:used_shrooms run scoreboard players remove @s gn.shrooms 1
