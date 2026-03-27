tellraw @a {"text":"AMAM is loading...","color":"green"}

function amam:setup/all

execute unless score ::global amam--init.is_first_launch matches 0 run function amam:init