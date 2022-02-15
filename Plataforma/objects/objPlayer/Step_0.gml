chao = place_meeting(x, y + 1, objChao)

var left, right, jump;

right = keyboard_check(vk_right) || keyboard_check(ord("D"));
left = keyboard_check(vk_left) || keyboard_check(ord("A"));
jump = keyboard_check_pressed(vk_space);

velh = (right - left) * max_velh;
//cair se nao estiver no chao
if(!chao)
{
	velv += grav;
	
}
else
{
	jumps = 2;
}

//Pulo duplo
if(jumps > 0 && jump)
{
	jumps--;
	velv = -max_velv;
}

/*
if(jump && chao)
{
	velv = -max_velv;
}
*/