///m_battleEngine();
//if option is selected what should be done?
if(o_player.interact) {
    //Attack the enemy
    if(current == ATTACK) {
        show_debug_message("Attack pressed");
    } 
    //Guard from enemy attack
    else if(current == GUARD) {
        show_debug_message("Guard pressed");
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

if(o_player.menu_right) {
    
    current++;
      
    if(current == array_length_1d(battleOptionPositionsX))
        current = 0;
    
    xx = battleOptionPositionsX[current]+60;
}

if(o_player.menu_left) {
    current--;
        
    if(current < 0)
        current = array_length_1d(battleOptionPositionsX)-1;
    
    xx = battleOptionPositionsX[current]+60;
}
