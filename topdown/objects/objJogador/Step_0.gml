var xMove = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var yMove = keyboard_check(ord("S")) - keyboard_check(ord("W"));

if(xMove !=0 || yMove !=0)
{
	sprite_index = sprJogadorrun;
}

else
{
	sprite_index = sprJogadoridl;
}

if(xMove != 0) image_xscale = xMove;

x += xMove * spd;
y += yMove * spd;

cd--;
spawner--;

if(cd <= 0 && mouse_check_button(mb_left))
{
	cd = 10;
	with instance_create_layer(x,y, "Instances", objTiro)
	{
		direction = objGun.image_angle;
		speed = 8;
	}

}

if(vida <= 0)
{
	room_goto(Room2)
}