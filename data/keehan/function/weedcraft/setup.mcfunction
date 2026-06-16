## This function is called on datapack load

    # Initialize all the scoreboards
    scoreboard objectives add gn.effects dummy

    scoreboard objectives add gn.blunt dummy
    scoreboard objectives add gn.meth dummy
    scoreboard objectives add gn.shrooms dummy
    scoreboard objectives add gn.cocaine dummy

    # Send load message
    tellraw @a ["",{"text":"[","color":"dark_gray"},{"text":"Weedcraft","color":"green","bold":true},{"text":"]","color":"dark_gray"},{"text":" datapack loaded successfully. Stay safe out there.","color":"gray"}]