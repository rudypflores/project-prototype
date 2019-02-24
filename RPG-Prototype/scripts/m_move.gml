///m_move();

var right = keyboard_check(vk_right);
var up = keyboard_check(vk_up);
var left = keyboard_check(vk_left);
var down = keyboard_check(vk_down);

var spd = 3;
var hspd = right - left;
var vspd = down - up;

//Check for x collision
if(place_meeting(x + (hspd * spd), y, o_collision)) {
    while(!place_meeting(x + sign(hspd), y, o_collision)) {
        x += sign(hspd);
    }
} else {
    x += hspd * spd;
}

//Check for y collision
if(place_meeting(x, y + (vspd * spd), o_collision)) {
    while(!place_meeting(x, y + sign(vspd), o_collision)) {
        y += sign(vspd);
    }
} else {
    y += vspd * spd;
}
