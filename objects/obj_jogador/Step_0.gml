#region Camera
if keyboard_check_pressed(ord("C")) {
	if !instance_exists(obj_custom) {
		instance_create_layer(x, y, "Instances", obj_custom);
	}else{
		instance_destroy(obj_custom);
	}
	global.changemode = !global.changemode;
}