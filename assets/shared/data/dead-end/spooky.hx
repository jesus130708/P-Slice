import objects.HealthIcon;
import StringTools;

var spooky = new Character(440, 100, 'spooky-deadEnd-dark', false);
game.startCharacterPos(spooky, true);
game.addBehindBF(spooky);
gf.alpha = 0.00001;
spooky.alpha = 0.00001;

var chars = [
	"GF Sing" => spooky
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

			if (note.noteType == "GF Sing") {
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
	if (curBeat == 128) {
		spooky.alpha = 1;
	}
	if (curBeat == 160) {
		spooky.alpha = 1;
		game.remove(spooky);
		spooky = new Character(440, 100, 'spooky-deadEnd', false);
		game.startCharacterPos(spooky, true);
		game.add(spooky);

		chars = [
			"GF Sing" => spooky
		];
	}
	if (curBeat == 216) {
		game.remove(spooky);
		spooky = new Character(440, 100, 'spooky-deadEnd2', false);
		game.startCharacterPos(spooky, true);
		game.add(spooky);

		chars = [
			"GF Sing" => spooky
		];
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

function onUpdatePost() {
	if (game.generatedMusic && !game.inCutscene && game.startedCountdown) {
		for (char in chars) {
			if (!char.stunned && char.animation.curAnim != null && char.holdTimer > Conductor.stepCrochet * (0.0011 / FlxG.sound.music.pitch) * char.singDuration && StringTools.startsWith(char.animation.curAnim.name, "sing") && !StringTools.endsWith(char.animation.curAnim.name, "miss")) {
				char.dance();
			}
		}
	}
}