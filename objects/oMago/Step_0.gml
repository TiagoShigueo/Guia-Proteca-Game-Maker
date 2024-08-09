if (mouse_check_button_released(mb_left)) {
	target_x = mouse_x;
	target_y=mouse_y;
	move_towards_point(mouse_x, mouse_y, 1);
}

if (point_distance(x, y, target_x, target_y) < 5) {
	speed=0;
}
