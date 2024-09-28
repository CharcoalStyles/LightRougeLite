package states;

import flixel.FlxG;
import flixel.FlxState;
import flixel.tile.FlxTilemap;

class PlayState extends FlxState
{
	var tileMap:FlxTilemap;

	override public function create()
	{
		super.create();
		var tiles = new Array<Array<Int>>();

		for (i in 0...10)
		{
			var row = new Array<Int>();
			for (j in 0...10)
			{
				row.push(FlxG.random.int(0, 1));
			}
			tiles.push(row);
		}

		tileMap = new FlxTilemap();
		tileMap.loadMapFrom2DArray(tiles, "assets/images/testFloor.png", 32, 32);
		add(tileMap);
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
