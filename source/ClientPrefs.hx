package;

import flixel.FlxG;
import flixel.util.FlxSave;
import flixel.input.keyboard.FlxKey;
import flixel.graphics.FlxGraphic;
import Controls;
import openfl.Lib;

class ClientPrefs
{
	public static var downScroll:Bool = false;
	public static var sus:Bool = false;
	public static var pixelUp:Bool = false;
	public static var whatUp:Bool = false;
	public static var middleScroll:Bool = false;
	public static var showFPS:Bool = true;
	public static var flashing:Bool = true;
	public static var globalAntialiasing:Bool = true;
	public static var noteSplashes:Bool = true;
	public static var lowQuality:Bool = false;
	public static var framerate:Int = 60;
	public static var curSkin:Int = 0;
	public static var cursing:Bool = true;
	public static var violence:Bool = true;
	public static var camZooms:Bool = true;
	public static var hideHud:Bool = false;
	public static var cameraMovement:Bool = false;
	public static var showTiming:Bool = false;
	public static var changeLayout:Bool = false;
	public static var noteOffset:Int = 0;
	public static var arrowHSV:Array<Array<Int>> = [[0, 0, 0], [0, 0, 0], [0, 0, 0], [0, 0, 0]];
	public static var songsPlayed:Map<String, Bool> = [
		'sayonara-planet-wars' => false,
		'bi' => false,
		'i' => false,
		'fin4le' => false,
		'made-in-love' => false
	];
	public static var imagesPersist:Bool = false;
	public static var ghostTapping:Bool = true;
	public static var timeBarEnabled:Bool = false;
	public static var scoreZoom:Bool = true;
	public static var noReset:Bool = false;
	public static var healthBarAlpha:Float = 1;
	public static var controllerMode:Bool = false;
	public static var bgShadow:Bool = false;
	public static var bgOpacity:Float = .5;
	public static var scrollSpeed:Float = 2;
	public static var noMiss:Bool = false;
	public static var mirrorMode:Bool = false;
	public static var noFail:Bool = false;
	public static var judgementCounter:Bool = false;
	public static var fanArtBG:Bool = false;
	public static var showIcons:Bool = true;
	public static var sdvxClear:String = "EFFECTIVE";
	public static var noEnemyArrows:String = "On mid scroll";
	public static var lnMode:String = "Rating";

	public static var gameplaySettings:Map<String, Dynamic> = [
		'scrollspeed' => 1.0,
		'songspeed' => 1.0,
		'healthgain' => 1.0,
		'healthloss' => 1.0,
		'instakill' => false,
		'practice' => false,
		'botplay' => false,
		'opponentplay' => false
	];

	public static var comboOffset:Array<Int> = [0, 0, 0, 0];
	public static var keSustains:Bool = false; // i was bored, okay?

	public static var ratingOffset:Int = 0;
	public static var sickWindow:Int = 45;
	public static var goodWindow:Int = 90;
	public static var badWindow:Int = 135;
	public static var shitWindow:Int = 160;
	public static var safeFrames:Float = 10;

	// Every key has two binds, add your key bind down here and then add your control on options/ControlsSubState.hx and Controls.hx
	public static var keyBinds:Map<String, Array<FlxKey>> = [
		// Key Bind, Name for ControlsSubState
		'note_left' => [A, LEFT],
		'note_down' => [S, DOWN],
		'note_up' => [W, UP],
		'note_right' => [D, RIGHT],
		'ui_left' => [A, LEFT],
		'ui_down' => [S, DOWN],
		'ui_up' => [W, UP],
		'ui_right' => [D, RIGHT],
		'accept' => [SPACE, ENTER],
		'back' => [BACKSPACE, ESCAPE],
		'pause' => [ENTER, ESCAPE],
		'reset' => [R, NONE],
		'volume_mute' => [ZERO, NONE],
		'volume_up' => [NUMPADPLUS, PLUS],
		'volume_down' => [NUMPADMINUS, MINUS],
		'debug_1' => [SEVEN, NONE],
		'debug_2' => [EIGHT, NONE]
	];
	public static var defaultKeys:Map<String, Array<FlxKey>> = null;

	public static function loadDefaultKeys()
	{
		defaultKeys = keyBinds.copy();
		// trace(defaultKeys);
	}

	public static function saveSettings()
	{
		FlxG.save.data.downScroll = downScroll;
		FlxG.save.data.sus = sus;
		FlxG.save.data.pixelUp = pixelUp;
		FlxG.save.data.whatUp = whatUp;
		FlxG.save.data.middleScroll = middleScroll;
		FlxG.save.data.showFPS = showFPS;
		FlxG.save.data.flashing = flashing;
		FlxG.save.data.globalAntialiasing = globalAntialiasing;
		FlxG.save.data.noteSplashes = noteSplashes;
		FlxG.save.data.lowQuality = lowQuality;
		FlxG.save.data.framerate = framerate;
		FlxG.save.data.curSkin = curSkin;
		// FlxG.save.data.cursing = cursing;
		// FlxG.save.data.violence = violence;
		FlxG.save.data.camZooms = camZooms;
		FlxG.save.data.noteOffset = noteOffset;
		FlxG.save.data.hideHud = hideHud;
		FlxG.save.data.cameraMovement = cameraMovement;
		FlxG.save.data.showTiming = showTiming;
		FlxG.save.data.changeLayout = changeLayout;
		FlxG.save.data.arrowHSV = arrowHSV;
		FlxG.save.data.imagesPersist = imagesPersist;
		FlxG.save.data.ghostTapping = ghostTapping;
		FlxG.save.data.timeBarEnabled = timeBarEnabled;
		FlxG.save.data.scoreZoom = scoreZoom;
		FlxG.save.data.noReset = noReset;
		FlxG.save.data.healthBarAlpha = healthBarAlpha;
		FlxG.save.data.scrollSpeed = scrollSpeed;
		FlxG.save.data.noMiss = noMiss;
		FlxG.save.data.mirrorMode = mirrorMode;
		FlxG.save.data.noFail = noFail;
		FlxG.save.data.noEnemyArrows = noEnemyArrows;
		FlxG.save.data.lnMode = lnMode;
		FlxG.save.data.comboOffset = comboOffset;
		FlxG.save.data.achievementsMap = Achievements.achievementsMap;
		FlxG.save.data.henchmenDeath = Achievements.henchmenDeath;
		FlxG.save.data.bgOpacity = bgOpacity;
		FlxG.save.data.showIcons = showIcons;
		FlxG.save.data.sdvxClear = sdvxClear;

		FlxG.save.data.ratingOffset = ratingOffset;
		FlxG.save.data.sickWindow = sickWindow;
		FlxG.save.data.goodWindow = goodWindow;
		FlxG.save.data.badWindow = badWindow;
		FlxG.save.data.shitWindow = shitWindow;
		FlxG.save.data.safeFrames = safeFrames;
		FlxG.save.data.gameplaySettings = gameplaySettings;
		FlxG.save.data.songsPlayed = songsPlayed;
		FlxG.save.data.controllerMode = controllerMode;
		FlxG.save.data.bgShadow = bgShadow;
		FlxG.save.data.judgementCounter = judgementCounter;
		FlxG.save.data.fanArtBG = fanArtBG;

		FlxG.save.flush();

		var save:FlxSave = new FlxSave();
		save.bind('controls_v2', 'SoundVoltex'); // Placing this in a separate save so that it can be manually deleted without removing your Score and stuff
		save.data.customControls = keyBinds;
		save.flush();
		FlxG.log.add("Settings saved!");
	}

	public static function loadPrefs()
	{
		if (FlxG.save.data.downScroll != null)
		{
			downScroll = FlxG.save.data.downScroll;
		}
		if (FlxG.save.data.sus != null)
		{
			sus = FlxG.save.data.sus;
		}
		if (FlxG.save.data.pixelUp != null)
		{
			pixelUp = FlxG.save.data.pixelUp;
		}
		if (FlxG.save.data.whatUp != null)
		{
			whatUp = FlxG.save.data.whatUp;
		}
		if (FlxG.save.data.judgementCounter != null)
		{
			judgementCounter = FlxG.save.data.judgementCounter;
		}
		if (FlxG.save.data.fanArtBG != null)
		{
			fanArtBG = FlxG.save.data.fanArtBG;
		}
		if (FlxG.save.data.middleScroll != null)
		{
			middleScroll = FlxG.save.data.middleScroll;
		}
		if (FlxG.save.data.showFPS != null)
		{
			showFPS = FlxG.save.data.showFPS;
		}
		if (FlxG.save.data.flashing != null)
		{
			flashing = FlxG.save.data.flashing;
		}
		if (FlxG.save.data.globalAntialiasing != null)
		{
			globalAntialiasing = FlxG.save.data.globalAntialiasing;
		}
		if (FlxG.save.data.noteSplashes != null)
		{
			noteSplashes = FlxG.save.data.noteSplashes;
		}
		if (FlxG.save.data.lowQuality != null)
		{
			lowQuality = FlxG.save.data.lowQuality;
		}
		if (FlxG.save.data.framerate != null)
		{
			framerate = FlxG.save.data.framerate;
			if (framerate > FlxG.drawFramerate)
			{
				FlxG.updateFramerate = framerate;
				FlxG.drawFramerate = framerate;
			}
			else
			{
				FlxG.drawFramerate = framerate;
				FlxG.updateFramerate = framerate;
			}
		}
		/*if(FlxG.save.data.cursing != null) {
				cursing = FlxG.save.data.cursing;
			}
			if(FlxG.save.data.violence != null) {
				violence = FlxG.save.data.violence;
		}*/
		if (FlxG.save.data.camZooms != null)
		{
			camZooms = FlxG.save.data.camZooms;
		}
		if (FlxG.save.data.hideHud != null)
		{
			hideHud = FlxG.save.data.hideHud;
		}
		if (FlxG.save.data.cameraMovement != null)
		{
			cameraMovement = FlxG.save.data.cameraMovement;
		}
		if (FlxG.save.data.showTiming != null)
		{
			showTiming = FlxG.save.data.showTiming;
		}
		if (FlxG.save.data.changeLayout != null)
		{
			changeLayout = FlxG.save.data.changeLayout;
		}
		if (FlxG.save.data.noteOffset != null)
		{
			noteOffset = FlxG.save.data.noteOffset;
		}
		if (FlxG.save.data.curSkin != null)
		{
			curSkin = FlxG.save.data.curSkin;
		}
		if (FlxG.save.data.arrowHSV != null)
		{
			arrowHSV = FlxG.save.data.arrowHSV;
		}
		if (FlxG.save.data.imagesPersist != null)
		{
			imagesPersist = FlxG.save.data.imagesPersist;
			FlxGraphic.defaultPersist = ClientPrefs.imagesPersist;
		}
		if (FlxG.save.data.ghostTapping != null)
		{
			ghostTapping = FlxG.save.data.ghostTapping;
		}
		if (FlxG.save.data.timeBarEnabled != null)
		{
			timeBarEnabled = FlxG.save.data.timeBarEnabled;
		}
		if (FlxG.save.data.scoreZoom != null)
		{
			scoreZoom = FlxG.save.data.scoreZoom;
		}
		if (FlxG.save.data.noReset != null)
		{
			noReset = FlxG.save.data.noReset;
		}
		if (FlxG.save.data.showIcons != null)
		{
			showIcons = FlxG.save.data.showIcons;
		}
		if (FlxG.save.data.sdvxClear != null)
		{
			sdvxClear = FlxG.save.data.sdvxClear;
		}
		if (FlxG.save.data.noMiss != null)
		{
			noMiss = FlxG.save.data.noMiss;
		}
		if (FlxG.save.data.bgOpacity != null)
		{
			bgOpacity = FlxG.save.data.bgOpacity;
		}
		if (FlxG.save.data.mirrorMode != null)
		{
			mirrorMode = FlxG.save.data.mirrorMode;
		}
		if (FlxG.save.data.noFail != null)
		{
			noFail = FlxG.save.data.noFail;
		}
		if (FlxG.save.data.noEnemyArrows != null)
		{
			noEnemyArrows = FlxG.save.data.noEnemyArrows;
		}
		if (FlxG.save.data.lnMode != null)
		{
			lnMode = FlxG.save.data.lnMode;
		}
		if (FlxG.save.data.healthBarAlpha != null)
		{
			healthBarAlpha = FlxG.save.data.healthBarAlpha;
		}
		if (FlxG.save.data.scrollSpeed != null)
		{
			scrollSpeed = FlxG.save.data.scrollSpeed;
		}
		if (FlxG.save.data.comboOffset != null)
		{
			comboOffset = FlxG.save.data.comboOffset;
		}

		if (FlxG.save.data.ratingOffset != null)
		{
			ratingOffset = FlxG.save.data.ratingOffset;
		}
		if (FlxG.save.data.sickWindow != null)
		{
			sickWindow = FlxG.save.data.sickWindow;
		}
		if (FlxG.save.data.goodWindow != null)
		{
			goodWindow = FlxG.save.data.goodWindow;
		}
		if (FlxG.save.data.badWindow != null)
		{
			badWindow = FlxG.save.data.badWindow;
		}
		if (FlxG.save.data.shitWindow != null)
		{
			shitWindow = FlxG.save.data.shitWindow;
		}
		if (FlxG.save.data.safeFrames != null)
		{
			safeFrames = FlxG.save.data.safeFrames;
		}
		if (FlxG.save.data.controllerMode != null)
		{
			controllerMode = FlxG.save.data.controllerMode;
		}
		if (FlxG.save.data.bgShadow != null)
		{
			bgShadow = FlxG.save.data.bgShadow;
		}
		if (FlxG.save.data.gameplaySettings != null)
		{
			var savedMap:Map<String, Dynamic> = FlxG.save.data.gameplaySettings;
			for (name => value in savedMap)
			{
				gameplaySettings.set(name, value);
			}
		}
		if (FlxG.save.data.songsPlayed != null)
		{
			var savedMap:Map<String, Bool> = FlxG.save.data.songsPlayed;
			for (name => value in songsPlayed)
			{
				songsPlayed.set(name, value);
			}
		}

		// flixel automatically saves your volume!
		if (FlxG.save.data.volume != null)
		{
			FlxG.sound.volume = FlxG.save.data.volume;
		}
		if (FlxG.save.data.mute != null)
		{
			FlxG.sound.muted = FlxG.save.data.mute;
		}

		var save:FlxSave = new FlxSave();
		save.bind('controls_v2', 'SoundVoltex');
		if (save != null && save.data.customControls != null)
		{
			var loadedControls:Map<String, Array<FlxKey>> = save.data.customControls;
			for (control => keys in loadedControls)
			{
				keyBinds.set(control, keys);
			}
			reloadControls();
		}
	}

	inline public static function getGameplaySetting(name:String, defaultValue:Dynamic):Dynamic
	{
		return /*PlayState.isStoryMode ? defaultValue : */ (gameplaySettings.exists(name) ? gameplaySettings.get(name) : defaultValue);
	}

	public static function reloadControls()
	{
		PlayerSettings.player1.controls.setKeyboardScheme(KeyboardScheme.Solo);

		TitleState.muteKeys = copyKey(keyBinds.get('volume_mute'));
		TitleState.volumeDownKeys = copyKey(keyBinds.get('volume_down'));
		TitleState.volumeUpKeys = copyKey(keyBinds.get('volume_up'));
		FlxG.sound.muteKeys = TitleState.muteKeys;
		FlxG.sound.volumeDownKeys = TitleState.volumeDownKeys;
		FlxG.sound.volumeUpKeys = TitleState.volumeUpKeys;
	}

	public static function copyKey(arrayToCopy:Array<FlxKey>):Array<FlxKey>
	{
		var copiedArray:Array<FlxKey> = arrayToCopy.copy();
		var i:Int = 0;
		var len:Int = copiedArray.length;

		while (i < len)
		{
			if (copiedArray[i] == NONE)
			{
				copiedArray.remove(NONE);
				--i;
			}
			i++;
			len = copiedArray.length;
		}
		return copiedArray;
	}
}
