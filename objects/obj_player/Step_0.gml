/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

var _input = rollback_get_input();

if (_input.left)
{
        x -= global.speed;
}
if (_input.right)
{
        x += global.speed;
}
if (_input.down)
{
        y += global.speed;
}
if (_input.up)
{
        y -= global.speed;
}

if (player_id == 0)
{
	image_angle = point_direction(x, y, _input.mb_x, _input.mb_y);
	
	if (_input.fire_pressed)
	{
        var _proj = instance_create_layer(x, y, layer, obj_projectile);
		
        _proj.speed = 10;
        _proj.direction = image_angle;
        _proj.image_angle = image_angle;
        _proj.player = self;
	}
}

y = clamp(y, 50, room_height);