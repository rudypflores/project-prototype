///m_battle();
//The state for when the player is in the battle sequence
o_player.speed = 0;
interact = keyboard_check_pressed(ord('Z'));

//Move around the menu
menu_up = keyboard_check_pressed(vk_up);
menu_down = keyboard_check_pressed(vk_down);
