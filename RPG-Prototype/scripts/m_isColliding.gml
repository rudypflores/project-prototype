///m_isColliding();
if(place_meeting(x+5, y, o_player) || place_meeting(x, y-5, o_player) || place_meeting(x-5, y, o_player) || place_meeting(x, y+5, o_player)) {
    return true;
} else {
    return false;
}
