import snow.Log.log;
import snow.types.Types;
import snow.render.opengl.GL;

@:log_as('app')
class Main extends snow.App {
	override function config(config:AppConfig):AppConfig {
		config.window.title = '${application_name}';
		return config;
	}

	override function ready() {
		log('ready');
		app.window.onrender = render;
	}

	override function onkeyup(keycode:Int, _, _, mod:ModState, _, _){
		if (keycode == Key.escape)
			app.shutdown();
	}

	override function update(delta:Float) $(CSLB){
	}

	function render(window:snow.window.Window) $(CSLB){
		GL.clearColor(1.0, 1.0, 1.0, 1.0);
		GL.clear(GL.COLOR_BUFFER_BIT);
	}
}