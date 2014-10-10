public class MainScene : SEScene
{


	SESprite dota1;
	SESprite dota2;
	SESprite dota3;
	SESprite dota4;
	SESprite text;
	double trans = 0;
	
	public void initialize(SEResourceCache rsc) {
	base.initialize(rsc);
	add_sprite_for_color(Color.instance("white"), get_scene_width(), get_scene_height());
	rsc.prepare_image("dota1", "dota1", get_scene_width()*0.5,get_scene_height()*0.5);	
	rsc.prepare_image("dota2", "dota2", get_scene_width()*0.5,get_scene_height()*0.5);
	rsc.prepare_image("dota3", "dota3", get_scene_width()*0.5,get_scene_height()*0.5);
	rsc.prepare_image("dota4", "dota4", get_scene_width()*0.5,get_scene_height()*0.5);
	rsc.prepare_font("myfont", "arial color=black", 40);
	
	dota1 = add_sprite_for_image(SEImage.for_resource("dota1"));
	dota2 = add_sprite_for_image(SEImage.for_resource("dota2"));
	dota3 = add_sprite_for_image(SEImage.for_resource("dota3"));
	dota4 = add_sprite_for_image(SEImage.for_resource("dota4"));
	text = add_sprite_for_text("Dota Scenes", "myfont");
	
	dota1.move(0,0);
	dota2.move(0,get_scene_height()*0.5);
	dota3.move(get_scene_width()*0.5,0);
	dota4.move(get_scene_width()*0.5,get_scene_height()*0.5);
	text.move(0,0);
	}

	public void on_pointer_press(SEPointerInfo pi) {

		base.on_pointer_press(pi);
		
		if(pi.is_inside(0,0,0.5*get_scene_width(),0.5*get_scene_height())) {
			switch_scene(new Gio1());
		}
		else if(pi.is_inside(0,0.5*get_scene_height(),0.5*get_scene_width(),0.5*get_scene_height())) {
			switch_scene(new Gio2());		
		}
		else if(pi.is_inside(0.5*get_scene_width(),0,0.5*get_scene_width(),0.5*get_scene_height())) {
			switch_scene(new Gio3());
		}
		else if(pi.is_inside(0.5*get_scene_width(),0.5*get_scene_height(),0.5*get_scene_width(),0.5*get_scene_height())) {
			switch_scene(new Gio4());
		}
	}

	public void cleanup() {
		base.cleanup();
	}
}