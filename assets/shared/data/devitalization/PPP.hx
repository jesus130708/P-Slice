import flixel.addons.effects.FlxTrail; 
var bfTrail = new FlxTrail(game.boyfriend, null, 4, 10, 0.2, 0.05);
bfTrail.color = 0xFF0000FF;
addBehindBF(bfTrail);
bfTrail.alpha = 0;
var dadTrail = new FlxTrail(game.dad, null, 4, 10, 0.2, 0.05);
dadTrail.color = 0xFFFF0000;
addBehindDad(dadTrail);
dadTrail.alpha = 0;
function onUpdate() {
if (curStep == 416) {
bfTrail.alpha = 0.1;
}
if (curStep == 544) {
bfTrail.alpha = 0;
}
if (curStep == 800) {
bfTrail.alpha = 0.1;
}
if (curStep == 928) {
bfTrail.alpha = 0;
dadTrail.alpha = 0.1;
}
if (curStep == 1056) {
remove(dadTrail);
}
}