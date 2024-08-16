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
				// Para o cabelo e para o rosto são mais simples porque as variações estão na mesma sprite, só mudando o frame
				cabelo += keyboard_check_pressed(ord("D")) - keyboard_check_pressed(ord("A"));
			}
		}else if i == Custom.Rosto and i == mod_selecionado{
			with (obj_jogador) {
				rosto += keyboard_check_pressed(ord("D")) - keyboard_check_pressed(ord("A"));
			}
		}else if i == Custom.Corpo and i == mod_selecionado{
			// Para o corpo é diferente, pois não estão na mesma sprite
			corpo_selecionado += keyboard_check_pressed(ord("D")) - keyboard_check_pressed(ord("A"));
			var _corpo_num = 1; // quantidade de sprites de corpo -1, pois a contagem começa do 0
			
			if corpo_selecionado > _corpo_num{
				corpo_selecionado = 0;
			}else if corpo_selecionado < 0{
				corpo_selecionado = _corpo_num;
			}
			
			scrCorpo();
		}
		
		_y += _bgh + _sep;
	} /*else {
		draw_sprite(spr_bar, 0, _x, _y);
		
		_y += _barh + _sep;
	}*/
}
draw_set_alpha(1);