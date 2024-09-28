package states;

import csHxUtils.entities.CsMenu;
import csHxUtils.entities.SplitText;
import flixel.FlxG;
import flixel.FlxState;
import flixel.text.FlxText.FlxTextAlign;

class MenuState extends FlxState
{
	var gameName:String = "Lite Rougelike";

	override public function create()
	{
		super.create();

		var text = new SplitText(0, 0, gameName, {
			size: 32,
			perCharBuffer: 5.5,
		});
		text.color = 0xFFFFFFFF;
		text.animateColourByArray([0xFFaaaaaa, 0xFFFFFFFF, 0xFFdddddd, 0xFF888888, 0xFFdddddd, 0xFFFFFFFF], 0.05, 0.5, 0xFFFFFFFF, 0);
		text.x = (FlxG.width - text.width) / 2;
		text.y = 64;
		add(text);
		var menu = new CsMenu(FlxG.width / 2, (FlxG.height / 3) * 2, FlxTextAlign.CENTER, {
			keyboard: true,
			mouse: true,
			gamepad: false,
			gamepadId: -1
		});
		var mainPage = menu.createPage("main");
		mainPage.addItem("Play", () ->
		{
			FlxG.switchState(new PlayState());
		}, {
				labelOptions: {
					size: 28,
					perCharBuffer: 4,
				}
		});
		add(menu);
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
