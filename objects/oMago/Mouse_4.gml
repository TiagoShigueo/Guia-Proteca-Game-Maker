if (!instance_exists(oCaixaDialogo)) {
	// Create
	var _tb = instance_create_layer(0, 0, "Instances", oCaixaDialogo);
	
	// Add messages to textbox's list
	var _list = _tb.messages;
	for (var i = 0; i < array_length_1d(msg); i++) {
		var _arr = msg[i];
		
		ds_list_add(_list, _arr);
	}
}