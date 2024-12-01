rollback_define_player(obj_player);

rollback_define_input(
{
		left: vk_left,
        right: vk_right,
        up: vk_up,
        down: vk_down,
        mb_x: m_axisx,
        mb_y: m_axisy,
        fire: mb_left
});

if (!rollback_join_game())
{
	rollback_create_game(2, true);
}