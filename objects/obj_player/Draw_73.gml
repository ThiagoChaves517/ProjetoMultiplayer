/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

draw_text_transformed(x - 10, y - 20, points, 1/3, 1/3, 0);
draw_text_transformed(x - 10, y - 25, player_name, 1/3, 1/3, 0);

if(player_id == 1)
{
	draw_text_transformed(x - 10, y + 20, "shield", 1/3, 1/3, 0);	
	draw_text_transformed(x - 10, y + 25, playerShield, 1/3, 1/3, 0);	
}