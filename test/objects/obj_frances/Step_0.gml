 #region controles 

var tiro;

key_right = keyboard_check (ord("D"))

key_left = keyboard_check (ord("A"))

key_down = keyboard_check (ord("S"))

key_up = keyboard_check (ord("W"))

key_jump = keyboard_check (vk_space)

tiro = mouse_check_button_pressed(mb_left);

#endregion


#region movimentaçao

var move = key_right - key_left

hspd = move * spd;

vspd = vspd + grv;

if (hspd != 0) image_xscale = sign(hspd)

//Colisão horizontall
if place_meeting(x+hspd,y,obj_chao)
{
while(!place_meeting(x+sign(hspd),y,obj_chao))
{
x = x + sign(hspd);		
}	
vspd = 0;	
}
x = x + hspd;

//Colisão vertical
if place_meeting(x,y + vspd,obj_chao)
{
while(!place_meeting(x,y+sign(vspd),obj_chao))
{
y = y + sign(vspd);		
}	
vspd = 0;	
}
y = y + vspd;

//Pulo
if place_meeting(x,y+1,obj_chao) and key_jump
{
vspd -= 8;	
}

#endregion

cd--;
#region Tiro

if(cd <= 0 && mouse_check_button(mb_left))
{
	cd = 10;
	with instance_create_layer(x,y, "Instances", obj_tiro)
	{
		direction = obj_arma.image_angle;
		speed = 8;
	}
}

#endregion









