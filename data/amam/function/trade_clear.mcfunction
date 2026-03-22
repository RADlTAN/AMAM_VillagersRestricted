#debug
#tellraw @s "Lobotomy initiated"
execute if score amam:debug amam.toggle matches 1 run function ra_debw:debug_tellraw/macro_caller {function_name: "trade_clear"}

title @s actionbar {text:"You can't trade with this villager!",color:"yellow",italic:true,bold:false,shadow_color:[0,0,0,1]}

advancement revoke @s only amam:trade_clear_trigger

execute as @e[type=villager,tag=!amam_origin,distance=..15] run data modify entity @s Brain set value {}