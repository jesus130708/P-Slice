import objects.HealthIcon;
import StringTools;

var picoGay = new Character(700, 50, 'pico-deadEnd', true);
game.startCharacterPos(picoGay, true);
game.addBehindBF(picoGay);
picoGay.alpha = 0.00001;

var picoIcon = new HealthIcon('pico-deadEnd', true);
picoIcon.y = game.healthBar.y - 80;
picoIcon.cameras = [game.camHUD];
picoIcon.alpha = 0.00001;
game.add(picoIcon);

var bfIcon = new HealthIcon('bf-deadEnd', true);
bfIcon.y = game.healthBar.y - 70;
bfIcon.cameras = [game.camHUD];
bfIcon.alpha = 0.00001;
game.add(bfIcon);

var chars = [
	"Pico Dead Sing" => picoGay,
	"Pico Dead Duet" => picoGay
];

for (name in chars.keys()) {
	game.variables.set(name, chars[name]);
}

function onCreatePost() {
	for (note in game.unspawnNotes) {
		for (name in chars.keys()) {
			if (note.noteType == name) {
				note.noAnimation = true;
				note.noMissAnimation = true;
			}

			if (note.noteType == "Pico Dead Duet") {
				note.noAnimation = false;
				note.noMissAnimation = true;
			}
		}
	}
}

function onCountdownStarted() {
	new FlxTimer().start(Conductor.crochet / 1000 / game.playbackRate, function(tmr) {
		for (char in chars) {
			if (tmr.loopsLeft % char.danceEveryNumBeats == 0 && char.animation.curAnim != null && !StringTools.startsWith(char.animation.curAnim.name, "sing") && !char.stunned) {
				char.dance();
			}
		}
	}, 5);
}

function onBeatHit(){
	for (char in chars) {
		if (curBeat % char.danceEveryNumBeats == 0 && char.animation.curAnim != null && !StringTools.startsWith(char.animation.curAnim.name, "sing") && !char.stunned) {
			char.dance();
		}
	}

	picoIcon.scale.set(1, 1);
	picoIcon.updateHitbox();

	bfIcon.scale.set(1, 1);
	bfIcon.updateHitbox();

	if (curBeat == 456) {
		picoGay.alpha = 1;

		picoIcon.alpha = 1;
		bfIcon.alpha = 1;
	}

	if (curBeat == 489 || curBeat == 497 || curBeat == 505 || curBeat == 537 || curBeat == 545)
	{
		picoGay.playAnim('reload', true);
		picoGay.specialAnim = true;
	}
}

function goodNoteHit(note) {
	if (chars[note.noteType] != null) {
		var char = chars[note.noteType];
		var anim = ["singLEFT", "singDOWN", "singUP", "singRIGHT"][note.noteData % 4];
		char.playAnim(anim, true);
		char.holdTimer = 0;
	}
}

function onUpdate(elapsed:Float) {
	picoIcon.scale.set(game.iconP1.scale.x - 0.2, game.iconP1.scale.y - 0.2);
	picoIcon.updateHitbox();

	bfIcon.scale.set(game.iconP1.scale.x - 0.2, game.iconP1.scale.y - 0.2);
	bfIcon.updateHitbox();
}

function onUpdatePost() {
	if (game.generatedMusic && !game.inCutscene && game.startedCountdown) {
		for (char in chars) {
			if (!char.stunned && char.animation.curAnim != null && char.holdTimer > Conductor.stepCrochet * (0.0011 / FlxG.sound.music.pitch) * char.singDuration && StringTools.startsWith(char.animation.curAnim.name, "sing") && !StringTools.endsWith(char.animation.curAnim.name, "miss")) {
				char.dance();
			}
		}
	}

	var iconOffset:Int = 26;
	picoIcon.x = game.healthBar.barCenter + (150 * picoIcon.scale.x - 150) / 2 - iconOffset - 10;
	bfIcon.x = game.healthBar.barCenter + (150 * bfIcon.scale.x - 150) / 2 - iconOffset + 40;

	picoIcon.animation.curAnim.curFrame = (game.healthBar.percent < 20) ? 1 : 0;
	bfIcon.animation.curAnim.curFrame = (game.healthBar.percent < 20) ? 1 : 0;
}

function onStepHit()
{
	switch(curStep) 
    {
		case 1962, 1968, 1974, 1980, 1982, 1984, 1986, 1994, 2000, 2006, 2012, 2014,
	        2016, 2018, 2026, 2032, 2038, 2044, 2048, 2050, 2052, 2054, 2058, 2064, 
			2070, 2076, 2080, 2084:
			picoGay.playAnim('shoot', true); //Shooting Part 1
			picoGay.specialAnim = true;

		case 2154, 2160, 2166, 2172, 2176, 2186, 2192, 2198, 2204, 
		    2208, 2209, 2211, 2212, 2214, 2215, 2216:
			picoGay.playAnim('shoot', true); //Shooting Part 2
			picoGay.specialAnim = true;
	}
}