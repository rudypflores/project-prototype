///state_damaged(damage);
damage = argument0;

//countdown for health bar when damaged
if(hp > currentHp-damage) {
    //Prevent negative heatlh
    if(hp < 0)
        hp = 0;
    else
        hp = hp-delta_time/100000;
} 
//if the amount damaged was reached we reset the values for next time damaged
else if(ceil(hp) == currentHp-damage) {
    currentHp = ceil(hp);
    state = undefined;
}

//Display the current damage countdown per frame as integer
showHp = ceil(hp);
