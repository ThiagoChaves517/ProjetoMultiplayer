/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if (other.player == self)
{ 
	// Nothing happens...
}
else
{
	if(player_id == 1)
	{
		instance_destroy(other);
		playerShield -= 1;
		
		if(playerShield <= 0)
		{
			effect_create_above(ef_ring, x, y, 0, c_white);
			
			x = irandom_range(40, room_width - 40);
	
			y = irandom_range(60, room_height - 60);
			
			other.player.points += 1;	
			
			playerShield = 100;
		}
			
	}
	else
	{
		effect_create_above(ef_ring, x, y, 0, c_white);
        
		x = irandom_range(40, room_width - 40);
	
		y = irandom_range(60, room_height - 60);
        
		other.player.points += 1;	
	
		instance_destroy(other);
	}
}