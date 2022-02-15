direction = point_direction(x,y, objJogador.x, objJogador.y);
speed = random_range(2, 3.5);

if(direction > 90 && direction < 270)
{
	image_xscale = -1;	
}
else
{
	image_xscale = 1;	
}




if(vidaInimigo <= 0)
{
	instance_destroy() 
}

if(kills >= 8)
{
	instance_create_depth(random(room_width), random(room_height), "Instances", objInimigo)

	
	kills = 0;
}