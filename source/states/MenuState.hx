package states;

import csHxUtils.entities.SplitText;
import flixel.FlxG;
import flixel.FlxState;

class PlayState extends FlxState
{
	var gameName:String = "Lite Rouge-Like";

	override public function create()
	{
		super.create();

		var text = new SplitText(0, 0, gameName, SplitText.naiieveScaleDefaultOptions(2.5));
		text.color = 0xFFFFFFFF;
		// text.animateWave(2, 0.1, 2.5, false);
		animateText(text);
		text.x = (FlxG.width - text.width) / 2;
		text.y = 64;
		add(text);
	}

	function animateText(text:SplitText)
	{
		text.animateColour(0xffaaaaaa, 0.01, 0.1, 0xffffffff, true, () ->
		{
			text.animateColour(0xffffffff, 0.03, 0.3, 0xffaaaaaa, true, () ->
			{
				animateText(text);
			});
		});
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
