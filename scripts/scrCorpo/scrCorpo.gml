function scrCorpo(){
	switch corpo_selecionado{
		default:
			obj_jogador.corpo = spr_corpo1;
			break;
		case 1:
			obj_jogador.corpo = spr_corpo2;
			break;
	}
}