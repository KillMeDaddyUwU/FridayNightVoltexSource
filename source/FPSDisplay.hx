package;

import haxe.Int64;
import openfl.display.FPS;
import openfl.system.System;
import flixel.math.FlxMath;
import flixel.util.FlxColor;
import openfl.Lib;
import openfl.display.Bitmap;
import openfl.display.Sprite;
import flixel.FlxG;
import openfl.text.TextFormat;
#if gl_stats
import openfl.display._internal.stats.Context3DStats;
import openfl.display._internal.stats.DrawCallContext;
#end
#if flash
import openfl.Lib;
#end

// Credits to Kade and the Holofunk team :)

class FPSDisplay extends FPS
{
	static var colors:Array<FlxColor> = [
		FlxColor.fromRGB(148, 0, 211),
		FlxColor.fromRGB(75, 0, 130),
		FlxColor.fromRGB(0, 0, 255),
		FlxColor.fromRGB(0, 255, 0),
		FlxColor.fromRGB(255, 255, 0),
		FlxColor.fromRGB(255, 127, 0),
		FlxColor.fromRGB(255, 0, 0)
	];
	static var currentColor:Int = 0;

	var skippedFrames = 0;
	var renderFPS:Bool;

	public var bitmap:Bitmap;

	public function new(x:Float = 10, y:Float = 10, color:Int = 0x000000, font:String = "vcr.ttf")
	{
		super();
		defaultTextFormat = new TextFormat("VCR OSD Mono", 15, color);
		width = 500;
		bitmap = new Bitmap();
		visible = false;
	}

	public function addToScene(sprite:Sprite)
	{
		sprite.addChild(this);
		sprite.addChild(bitmap);
	}

	public function setRender(display:Bool)
	{
		renderFPS = display;
	}

	@:noCompletion
	private #if !flash override #end function __enterFrame(deltaTime:Float):Void
	{
		// From original FPS class
		currentTime += deltaTime;
		times.push(currentTime);

		while (times[0] < currentTime - 1000)
		{
			times.shift();
		}

		var currentCount = times.length;
		currentFPS = Math.round((currentCount + cacheCount) / 2);

		if (currentCount != cacheCount)
		{
			text = "Friday Night Voltex v" + MainMenuState.fnVersion + "\nFPS: " + currentFPS;

			#if (gl_stats && !disable_cffi && (!html5 || !canvas))
			text += "\ntotalDC: " + Context3DStats.totalDrawCalls();
			text += "\nstageDC: " + Context3DStats.contextDrawCalls(DrawCallContext.STAGE);
			text += "\nstage3DDC: " + Context3DStats.contextDrawCalls(DrawCallContext.STAGE3D);
			#end
		}

		if (ClientPrefs.showFPS)
			renderFPS = true;
		else
			renderFPS = false;

        // Don't consume rendering resources if fps is off
		if (renderFPS)
        {
            // Render the final bitmap image in a separate buffer so RAM doesn't get clogged with unnecessary objects causing a memory leak
            visible = true;
        }
    
		bitmap.visible = renderFPS;

		cacheCount = currentCount;
	}
}