package;
import flixel.FlxSubState;
import flixel.FlxG;
import flixel.FlxSprite;
import Controls.Control;
import flixel.FlxState;

class EndingState extends FlxState
{
	
	override public function create():Void 
	{
		super.create();
		var endingScreen:FlxSprite = new FlxSprite(0, 0).loadGraphic('endscreen', 'shared'); 
		endingScreen.antialiasing = true;
		add(endingScreen);
		// end screen code
		// heat why did you make it go to fucking preload when theres no image there
	}
	
	override public function update(elapsed:Float):Void 
	{
		if (FlxG.keys.pressed.ENTER){
		FlxG.switchState(new MainMenuState());
		trace("PRESSED ENTER");
		FlxG.sound.playMusic("assets/music/freakyMenu");
		super.update(elapsed);
		}
		
	}
		
}