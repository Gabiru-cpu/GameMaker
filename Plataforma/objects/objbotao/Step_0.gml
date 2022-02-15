var mouseOn = position_meeting(mouse_x, mouse_y, self)
var clickedOn = mouse_check_button(mb_left)

if(mouseOn && clickedOn)
{
	room_goto(Jogo)
}

if(mouseOn)
{
	image_blend = c_aqua
	draw_set_color(c_red)
}
else
{
	image_blend = c_white
	draw_set_color(c_grey)
}