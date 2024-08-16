var _x = obj_jogador.x + 20;
var _y = obj_jogador.y - 40;
var _sep = 2;
var _bgh = sprite_get_height(spr_background);
var _barh = sprite_get_height(spr_bar);

mod_selecionado += keyboard_check_pressed(ord("S")) - keyboard_check_pressed(ord("W"));
mod_selecionado = clamp(mod_selecionado, 0, modificador - 1);

for (var i = 0; i < modificador; i++) {
	if i == mod_selecionado{
		draw_set_alpha(1);
	}else {
		draw_set_alpha(.5);
	}	
	
	if i == Custom.Cabelo or i == Custom.Rosto or i == Custom.Corpo {
		draw_sprite(spr_background, 0, _x, _y);	
	
		// Selecionando quel custom está selecionando
		if i == Custom.Cabelo and i == mod_selecionado{
			with (obj_jogador) {
				// O que fizer aqui dentro vai valer para o objeto jogador, e não mais para o objeto custom
				cabelo += keyboard_check_pressed(ord("D")) - keyboard_check_pressed(ord("A"));
			}
		}else if i == Custom.Rosto and i == mod_selecionado{
		
		}else if i == Custom.Corpo and i == mod_selecionado{
		
		}
		
		_y += _bgh + _sep;
	} else {
		draw_sprite(spr_bar, 0, _x, _y);
		
		_y += _barh + _sep;
	}
}
draw_set_alpha(1);