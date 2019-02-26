//m_checkCollision();
if(place_meeting(x+5, y, o_player)) {
    return true;
} else if(place_meeting(x, y-5, o_player)) {
    return true;
} else if(place_meeting(x-5, y, o_player)) {
    return true;
} else if(place_meeting(x, y+5, o_player)) {
    return true;
} else {
    return false;
}
