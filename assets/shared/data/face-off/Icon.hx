import objects.HealthIcon;

var bfIcon = new HealthIcon('bf-spirit', true);
bfIcon.y = game.healthBar.y - 70;
bfIcon.cameras = [game.camHUD];
game.add(bfIcon);

var dadIcon = new HealthIcon('dad-1-glow', true);
dadIcon.y = game.healthBar.y - 70;
dadIcon.cameras = [game.camHUD];
game.add(dadIcon);

var momIcon = new HealthIcon('mom-angry', true);
momIcon.y = game.healthBar.y - 110;
momIcon.cameras = [game.camHUD];
game.add(momIcon);

iconP1.visible = false;

function onUpdate(elapsed:Float) {
	var iconOffset:Int = 20;
	dadIcon.x = game.healthBar.barCenter + (150 * dadIcon.scale.x - 150) / 2 - iconOffset + 50;
	dadIcon.animation.curAnim.curFrame = (game.healthBar.percent < 20) ? 1 : 0;
	dadIcon.scale.set(game.iconP1.scale.x - 0.2, game.iconP1.scale.y - 0.2);
	dadIcon.updateHitbox();

	momIcon.x = game.healthBar.barCenter + (150 * momIcon.scale.x - 150) / 2 - iconOffset + 20;
	momIcon.animation.curAnim.curFrame = (game.healthBar.percent < 20) ? 1 : 0;
	momIcon.scale.set(game.iconP1.scale.x - 0.2, game.iconP1.scale.y - 0.2);
	momIcon.updateHitbox();

	bfIcon.x = game.healthBar.barCenter + (150 * momIcon.scale.x - 150) / 2 - iconOffset + 0;
	bfIcon.animation.curAnim.curFrame = (game.healthBar.percent < 20) ? 1 : 0;
	bfIcon.scale.set(game.iconP1.scale.x - 0.2, game.iconP1.scale.y - 0.2);
	bfIcon.updateHitbox();
}