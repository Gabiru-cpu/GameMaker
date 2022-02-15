//configurações dos controles
jumpKey = keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_up);
duckKey = keyboard_check(vk_down);

//colissão e controles
if(duckKey)
{
	duck = true;
	jump = false;
	fall = true;
}

if(place_meeting(x,y+1, obj_block))
{
	vspd = 0;
	jump = false;
	fall = false;

	if(!duckKey)
	{
		duck = false;
		
		if(jumpKey && !duckKey)
		{
			jump = false;
			vspd = -jspd;
		}
	}
}
else
{
	if(duckKey)
	{
		vspd=+ grav * 4;
	}
	else
	{
		if(vspd < termvel)
		vspd+= grav;
		
		if(sign(vspd) == 1)
		vspd += grav;
	}
}

//pulo
if(jump)
{
	if(vspd<0)
	{
		jump=true;
	}
	else
	{
		jump=false;
		fall=true;
	}
}

// checar colisão

if(place_meeting(x,y +vspd, obj_block))
{
	while(!place_meeting(x,y+sign(vspd),obj_block))
	{
		y+= sign(vspd);
	}
	vspd =0;
}

y += vspd;

//animação
if(jump || fall)
{
	sprite_index = spr_player_prd;
}

if(duck)
{
	sprite_index = spr_player_agxd;
	grav = 6;
}

if(!jump && !fall && !duck)
{
	sprite_index= spr_player;
	grav = 1;
}
