///m_battleEngine();
//if option is selected what should be done?
if(o_player.interact) {
    //Attack the enemy
    if(current == ATTACK) {
        show_debug_message("Attack pressed");
        o_hpBar_enemy.state = state_damaged;
        o_hpBar_enemy.in = irandom(50);
    } 
    //Guard from enemy attack
    else if(current == GUARD) {
        show_debug_message("Guard pressed");
        o_hpBar_player.state = state_damaged;
        o_hpBar_player.in = irandom(100);
    } 
    //Use special attack against enemy
    else if(current == SPECIALS) {
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
if(o_player.menu_right) {
    
    //Go to next option
    current++;
    
    //Handle overflow exception
    if(current == array_length_1d(battleOptionPositionsX))
        current = 0;
}
//If left is pressed
if(o_player.menu_left) {
    current--;
        
    if(current < 0)
        current = array_length_1d(battleOptionPositionsX)-1;  
}
//Place the pointer based on the current index
//Offset pointer to center of selection
if(current == SPECIALS) {
    xx = battleOptionPositionsX[current]+75;
} else if(current == ITEMS) {
    xx = battleOptionPositionsX[current]+55;
} else if(current == RUN) {
    xx = battleOptionPositionsX[current]+40;
} else {
    xx = battleOptionPositionsX[current]+60;
}
