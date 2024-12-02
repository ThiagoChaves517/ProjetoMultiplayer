rollback_define_player(obj_player);

rollback_define_input(
{
		left: [ord("A"), vk_left],
        right: [ord("D"), vk_right],
        up: [ord("W"), vk_up],
        down: [ord("S"), vk_down],
        mb_x: m_axisx,
        mb_y: m_axisy,
        fire: mb_left
});

if (!rollback_join_game())
{
	rollback_create_game(2, false);
}

global.speed = 1;

time_source_start(time_source_create(time_source_game, 1500, time_source_units_frames, function()
{
	static currentSpeed = 1;
	currentSpeed += 0.5;
	
	global.speed = currentSpeed;
	
	if(currentSpeed == 7.5)
	{
		currentSpeed = 1;
	}
	
	show_debug_message(global.speed);
}, [], -1));