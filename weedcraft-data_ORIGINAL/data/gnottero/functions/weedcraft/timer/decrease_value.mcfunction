## Decrease the value of the correct score each tick
    #> Called by the "gnottero:weedcraft/timer/main" function

    # Check the correct predicate and decrease the corresponding score
    execute if predicate gnottero:used_blunt run scoreboard players remove @s gn.blunt 1
    execute if predicate gnottero:used_cocaine run scoreboard players remove @s gn.cocaine 1
    execute if predicate gnottero:used_meth run scoreboard players remove @s gn.meth 1
    execute if predicate gnottero:used_shrooms run scoreboard players remove @s gn.shrooms 1