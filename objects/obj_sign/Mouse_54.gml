/// @description Insert description here

if (point_in_circle(Obj_PLayer.x,Obj_PLayer.y,x,y,64)) && (!instance_exists(obj_text))
{
	with(instance_create_layer(x,y-64,layer,obj_text))
	{
		Text = other.Text;
		length = string_length(Text);
	}
	
	with(obj_camera)
	{
		follow = other.id;
	}
}
