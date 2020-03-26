///m_move();
right = keyboard_check(vk_right);
up = keyboard_check(vk_up);
left = keyboard_check(vk_left);
down = keyboard_check(vk_down);
interact = keyboard_check_pressed(ord('Z'));
cancel = keyboard_check_pressed(ord('X'));

spd = 1.5;
hspd = right - left;
vspd = down - up;

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
