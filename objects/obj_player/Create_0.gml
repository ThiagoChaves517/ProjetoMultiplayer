/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

y = room_height / 2;

if (player_id == 0)
{
	x = 50;
}
else if (player_id == 1)
{
	sprite_index = CrabMoving1;
	image_xscale = 2;
	image_yscale = 2;
	
	x = room_width - 50;
}

points = 0;
playerShield = 100;