///m_isColliding(offset);

var offset = argument0;

if(place_meeting(x+offset, y, o_player) || place_meeting(x, y-offset, o_player) || place_meeting(x-offset, y, o_player) || place_meeting(x, y+offset, o_player)) {
    return true;
} else {
    return false;
}
