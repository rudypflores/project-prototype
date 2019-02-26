///m_collision();

if(place_meeting(x + (o_player.hspd * o_player.spd), y, o_collision)) {
    while(!place_meeting(x + sign(o_player.hspd), y, o_collision)) {
        return false;
    }
} else {
    return true;
}

//Check for y collision
if(place_meeting(x, y + (o_player.vspd * o_player.spd), o_collision)) {
    while(!place_meeting(x, y + sign(o_player.vspd), o_collision)) {
        return false;
    }
} else {
    return true;
}
