///m_collide(collider);
collider = argument0;

hspd = spd * (right - left);
vspd = spd * (down - up);

if(place_meeting(x+hspd, y, collider)) {
    while(!place_meeting(x + sign(hspd), y, collider)) {
        x += sign(hspd);
    }
    hspd = 0;
}
if(place_meeting(x, y+vspd, collider)) {
    while(!place_meeting(x, y + sign(vspd), collider)) {
        y += sign(vspd);
    }
    vspd = 0;
}

x += hspd;
y += vspd;
