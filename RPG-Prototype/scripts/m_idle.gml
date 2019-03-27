///m_idle();
o_player.speed = 0;
o_player.image_index = 0;

//Select
interact = keyboard_check_pressed(ord('Z'));

//Move around the menu
menu_right = keyboard_check(vk_right);
menu_left = keyboard_check(vk_left);

current = 0;
