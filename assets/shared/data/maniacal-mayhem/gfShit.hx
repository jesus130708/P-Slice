import objects.HealthIcon;

var gfIcon = new HealthIcon('gf-worried', true);
gfIcon.y = game.healthBar.y - 105;
gfIcon.cameras = [game.camHUD];
game.add(gfIcon);

gf.alpha = 1; //yes.

function onBeatHit() {
	gfIcon.scale.set(1, 1);
	gfIcon.updateHitbox();
}

function onUpdate(elapsed:Float) {
	gfIcon.scale.set(game.iconP1.scale.x - 0.2, game.iconP1.scale.y - 0.2);
	gfIcon.updateHitbox();
}

function onUpdatePost(elapsed:Float) {
	var iconOffset:Int = 26;
	gfIcon.x = game.healthBar.barCenter + (150 * gfIcon.scale.x - 150) / 2 - iconOffset + 65;
	gfIcon.animation.curAnim.curFrame = (game.healthBar.percent < 20) ? 1 : 0;
}