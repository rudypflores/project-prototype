///m_battleEngine();
//if option is selected what should be done?

if(o_player.interact) {
    //Attack the enemy
    if(current == ATTACK) {
        o_battle_attack.image_speed = .8;
        o_hpBar_enemy.state = state_damaged;
        o_hpBar_enemy.in = irandom(50); //this is temporary
    } 
    //Guard from enemy attack
    else if(current == GUARD) {
        o_battle_guard.image_speed = .8;
        o_hpBar_player.state = state_damaged;
        o_hpBar_player.in = irandom(100); //this is temporary
    } 
    //Use special attack against enemy
    else if(current == SPECIALS) {
        o_battle_specials.image_speed = .8;
        show_debug_message("Specials pressed");
    }
    //Use an item
    else if(current == ITEMS) {
        show_debug_message("Items pressed");
    } 
    //Run from battle
    else if(current == RUN) {
        show_debug_message("Run for your life!");
        room_goto(o_player.last_room);
        o_player.state = m_move;
    }
}

//If right is pressed
if(o_player.menu_down) {
    
    //Go to next option
    current++;
    
    //Handle overflow exception
    if(current == array_length_1d(battleOptionPositionsY))
        current = 0;
}
//If left is pressed
if(o_player.menu_up) {
    current--;
    
    //handle underflow exception
    if(current < 0)
        current = array_length_1d(battleOptionPositionsY)-1;  
}
//Place the pointer based on the current index
//Offset pointer to center of selection   
if(current == ATTACK) {
    yy = battleOptionPositionsY[current];
} else if(current == SPECIALS) {
    yy = battleOptionPositionsY[current];
} else if(current == ITEMS) {
    yy = battleOptionPositionsY[current];
} else if(current == RUN) {
    yy = battleOptionPositionsY[current];
} else {
    yy = battleOptionPositionsY[current];
}
