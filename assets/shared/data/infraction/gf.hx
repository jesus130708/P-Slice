import objects.HealthIcon;
import StringTools;
var gfGay = new Character(1150, 200, 'gf-pico3-666', true);
game.startCharacterPos(gfGay, false);
game.add(gfGay);
gfGay.visible = false;

var bfIcon = new HealthIcon('bf-pico3', true);
bfIcon.y = game.healthBar.y - 80;
bfIcon.cameras = [game.camHUD];
bfIcon.visible = false;
game.add(bfIcon);

var gfIcon = new HealthIcon('gf-rigor', true);
gfIcon.y = game.healthBar.y - 70;
gfIcon.cameras = [game.camHUD];
gfIcon.visible = false;
game.add(gfIcon);

var chars = [
	"GF Sing" => gfGay
];
for (name in chars.keys()) {
	game.variables.set(name, chars[name]);
}
function onStepHit() {
if (curStep == 1712) {
gfIcon.visible = true;
bfIcon.visible = true;
gfGay.visible = true;
iconP1.visible = false;
	}
}
function onCreatePost() {
	for (note in game.unspawnNotes) {
		for (name in chars.keys()) {
			if (note.noteType == name) {
				note.noAnimation = true;
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

	gfIcon.scale.set(1, 1);
	gfIcon.updateHitbox();

	bfIcon.scale.set(1, 1);
	bfIcon.updateHitbox();
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
	gfIcon.alpha = game.iconP1.alpha;
	bfIcon.alpha = game.iconP1.alpha;
	gfGay.color = game.boyfriend.color;
	gfIcon.scale.set(game.iconP1.scale.x - 0.2, game.iconP1.scale.y - 0.2);
	gfIcon.updateHitbox();

	bfIcon.scale.set(game.iconP1.scale.x - 0.2, game.iconP1.scale.y - 0.2);
	bfIcon.updateHitbox();
	var iconOffset:Int = 26;
	gfIcon.x = game.healthBar.barCenter + (150 * gfIcon.scale.x - 150) / 2 - iconOffset + 40;
	bfIcon.x = game.healthBar.barCenter + (150 * bfIcon.scale.x - 150) / 2 - iconOffset - 10;

	gfIcon.animation.curAnim.curFrame = (game.healthBar.percent < 20) ? 1 : 0;
	bfIcon.animation.curAnim.curFrame = (game.healthBar.percent < 20) ? 1 : 0;
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