///m_receiveDamage(hp, damage);
h = argument0;
damage = argument1;
difference = h-damage;

if(hp >= difference) {
    hp = hp-delta_time/100000;
    if(instance_exists(o_hpBar)) {
        o_hpBar.hp = ceil(hp);
    }
}


