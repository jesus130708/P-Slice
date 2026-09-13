function onCreatePost()
initLuaShader("grey");
makeLuaSprite("grey");
makeGraphic("grey", screenWidth, screenHeight);
setSpriteShader("grey", "grey");
addHaxeLibrary("ShaderFilter", "openfl.filters");
runHaxeCode([[
trace(ShaderFilter);
game.camGame.setFilters([new ShaderFilter(game.getLuaObject("grey").shader)]);
game.camOther.setFilters([new ShaderFilter(game.getLuaObject("grey").shader)]);
game.camHUD.setFilters([new ShaderFilter(game.getLuaObject("grey").shader)]);
]]);
end
function onStepHit()
if curStep == 132 then
doTweenAlpha('flashw','flashw',0,1)
setProperty('bg.visible',false)
setProperty('bg2.visible',true)
setProperty('lay.visible',false)
setProperty('lay2.visible',true)
setProperty('dadTrail.visible',true)
runHaxeCode([[
var splash = getVar('splashesCam');
splash.filters = [new ShaderFilter(game.getLuaObject('pixel').shader)];
game.camGame.filters = [];
game.camHUD.filters = [];
game.camOther.filters = [];
]])
elseif curStep == 895 then
doTweenAlpha('flashw','flashw',1,2.3)
doTweenAlpha('lay','lay',1,2.3)
elseif curStep == 911 then
doTweenAlpha('flashw','flashw',0,1)
elseif curStep == 927 then
setProperty('bg2.visible',false)
setProperty('bg.visible',true)
setProperty('dadTrail2.visible',true)
cameraFlash('camOther','ffffff',1)
initLuaShader("grey");
makeLuaSprite("grey");
makeGraphic("grey", screenWidth, screenHeight);
setSpriteShader("grey", "grey");
addHaxeLibrary("ShaderFilter", "openfl.filters");
runHaxeCode([[
import flixel.addons.effects.FlxTrail;
var splash = getVar('splashesCam');
splash.filters = [new ShaderFilter(game.getLuaObject('grey').shader),new ShaderFilter(game.getLuaObject('pixel').shader)];

trace(ShaderFilter);
game.camGame.setFilters([new ShaderFilter(game.getLuaObject("grey").shader)]);
game.camOther.setFilters([new ShaderFilter(game.getLuaObject("grey").shader)]);
game.camHUD.setFilters([new ShaderFilter(game.getLuaObject("grey").shader)]);
]]);
elseif curStep == 944 then
setProperty('bg2.visible',false)
setProperty('school2.visible',true)
setProperty('street2.visible',true)
setProperty('sky2.visible',true)
setProperty('bgtree2.visible',true)
setProperty('trees2.visible',true)
cameraFlash('camOther','ffffff',1)
runHaxeCode([[
var splash = getVar('splashesCam');
splash.filters = [new ShaderFilter(game.getLuaObject('pixel').shader)];
game.camGame.filters = [];
game.camHUD.filters = [];
game.camOther.filters = [];
]])
elseif curStep == 960 then
setProperty('school2.visible',false)
setProperty('street2.visible',false)
setProperty('sky2.visible',false)
setProperty('bgtree2.visible',false)
setProperty('trees2.visible',false)
setProperty('schoolg.visible',true)
setProperty('streetg.visible',true)
setProperty('skyg.visible',true)
setProperty('bgtreeg.visible',true)
setProperty('treesg.visible',true)
cameraFlash('camOther','ffffff',1)
end
if curStep == 976 then
setProperty('bg2.visible',false)
setProperty('school2.visible',true)
setProperty('street2.visible',true)
setProperty('sky2.visible',true)
setProperty('bgtree2.visible',true)
setProperty('trees2.visible',true)
setProperty('schoolg.visible',false)
setProperty('streetg.visible',false)
setProperty('skyg.visible',false)
setProperty('bgtreeg.visible',false)
setProperty('treesg.visible',false)
cameraFlash('camOther','ffffff',1)
setProperty('bg2.visible',true)
elseif curStep == 992 then
setProperty('school2.visible',false)
setProperty('street2.visible',false)
setProperty('sky2.visible',false)
setProperty('bgtree2.visible',false)
setProperty('trees2.visible',false)
cameraFlash('camOther','ffffff',1)
setProperty('bg.visible',true)
initLuaShader("grey");
makeLuaSprite("grey");
makeGraphic("grey", screenWidth, screenHeight);
setSpriteShader("grey", "grey");
addHaxeLibrary("ShaderFilter", "openfl.filters");
runHaxeCode([[
import flixel.addons.effects.FlxTrail;
var splash = getVar('splashesCam');
splash.filters = [new ShaderFilter(game.getLuaObject('grey').shader),new ShaderFilter(game.getLuaObject('pixel').shader)];

trace(ShaderFilter);
game.camGame.setFilters([new ShaderFilter(game.getLuaObject("grey").shader)]);
game.camOther.setFilters([new ShaderFilter(game.getLuaObject("grey").shader)]);
game.camHUD.setFilters([new ShaderFilter(game.getLuaObject("grey").shader)]);
]]);
elseif curStep == 1008 then
setProperty('bg.visible',false)
setProperty('bg2.visible',true)
cameraFlash('camOther','ffffff',1)
runHaxeCode([[
var splash = getVar('splashesCam');
splash.filters = [new ShaderFilter(game.getLuaObject('pixel').shader)];
game.camGame.filters = [];
game.camHUD.filters = [];
game.camOther.filters = [];
]])
elseif curStep == 1024 then
setProperty('bg2.visible',false)
setProperty('bg4.visible', true)
cameraFlash('camOther','ffffff',1)
end
if curStep == 1060 then
setProperty('boyfriend.alpha', 0.5)
elseif curStep == 1170 then
setProperty('boyfriend.alpha', 0.25)
elseif curStep == 1440 then
doTweenAlpha('bfdead','boyfriend',0,1)
elseif curStep == 1450 then
doTweenAlpha('camHUD','camHUD',0,1)
elseif curStep == 1467 then
doTweenAlpha('lay','lay',1,2.3)
doTweenAlpha('flashw','flashw',1,2.3)
end
end
function onUpdate()
if curStep <= 0 then
setProperty('noteGroup.visible',false)
setProperty('timeTxt.visible',false)
setProperty('timeBar.visible',false)
setProperty('timeBarBG.visible',false)
setProperty('bfl.alpha',0.9)
noteTweenAlpha('oppo0', 0, 0,0.5, 'quartInOut')
noteTweenAlpha('oppo1', 1, 0,0.5, 'quartInOut')
noteTweenAlpha('oppo2', 2, 0,0.5, 'quartInOut')
noteTweenAlpha('oppo3', 3, 0,0.5, 'quartInOut')
noteTweenAlpha('play0', 4, 0,0.5, 'quartInOut')
noteTweenAlpha('play1', 5, 0,0.5, 'quartInOut')
noteTweenAlpha('play2', 6, 0,0.5, 'quartInOut')
noteTweenAlpha('play3', 7, 0,0.5, 'quartInOut')
doTweenAlpha('iconP2','iconP2',0,0.0001,'linear')
doTweenAlpha('iconP1','iconP1',0,0.0001,'linear')
doTweenAlpha('healthBarBG','healthBarBG',0,0.0001,'linear')
doTweenAlpha('healthBar','healthBar',0,0.0001,'linear')
doTweenAlpha('healthBarc','healthBarc',0,0.0001,'linear')
doTweenAlpha('scoreTxt','scoreTxt',0,0.0001,'linear')
setProperty('timeBarBG.visible',false)
setProperty('timeBar.visible',false)
setProperty('timeTxt.visible',false)
end
if curStep == 1 then
noteTweenAlpha('oppo0', 0, 0,0.5, 'quartInOut')
noteTweenAlpha('oppo1', 1, 0,0.5, 'quartInOut')
noteTweenAlpha('oppo2', 2, 0,0.5, 'quartInOut')
noteTweenAlpha('oppo3', 3, 0,0.5, 'quartInOut')
noteTweenAlpha('play0', 4, 0,0.5, 'quartInOut')
noteTweenAlpha('play1', 5, 0,0.5, 'quartInOut')
noteTweenAlpha('play2', 6, 0,0.5, 'quartInOut')
noteTweenAlpha('play3', 7, 0,0.5, 'quartInOut')
doTweenAlpha('timeBG','timeBarBG',0,0.5,'linear')
doTweenAlpha('time','timeBar',0,0.5,'linear')
doTweenAlpha('Txt','timeTxt',0,0.5,'linear')
end
if curStep == 67 then
setProperty('noteGroup.visible',true)
setProperty('timeTxt.visible',true)
setProperty('timeBar.visible',true)
setProperty('timeBarBG.visible',true)
noteTweenAlpha('oppo0', 0, 1,7.5, 'quartInOut')
noteTweenAlpha('oppo1', 1, 1,7.5, 'quartInOut')
noteTweenAlpha('oppo2', 2, 1,7.5, 'quartInOut')
noteTweenAlpha('oppo3', 3, 1,7.5, 'quartInOut')
noteTweenAlpha('play0', 4, 1,7.5, 'quartInOut')
noteTweenAlpha('play1', 5, 1,7.5, 'quartInOut')
noteTweenAlpha('play2', 6, 1,7.5, 'quartInOut')
noteTweenAlpha('play3', 7, 1,7.5, 'quartInOut')
doTweenAlpha('iconP2','iconP2', 1,7.5,'linear')
doTweenAlpha('iconP1','iconP1', 1,7.5,'linear')
doTweenAlpha('healthBarBG','healthBarBG', 1,7.5,'linear')
doTweenAlpha('healthBar','healthBar', 1,7.5,'linear')
doTweenAlpha('healthBarc','healthBarc', 1,7.5,'linear')
doTweenAlpha('timeBarBG','timeBarBG', 1,7.5,'linear')
doTweenAlpha('timeBar','timeBar', 1,7.5,'linear')
doTweenAlpha('timeTxt','timeTxt', 1,7.5,'linear')
doTweenAlpha('scoreTxt','scoreTxt',1,7.5,'linear')
doTweenAlpha('flashw','flashw',1,7.5)
doTweenAlpha('lay','lay',1,7.5)
end
end
function onCreate()
makeAnimatedLuaSprite('bg4','weeb/school/schoolGlitch/animatedGlitchSchool-alt',-900,-1150)
addAnimationByPrefix('bg4','idle','background 2',24,true)
scaleObject('bg4',6.5,6.5)
setScrollFactor('bg4',0.8,0.9)
setProperty('bg4.visible',false)
setProperty('bg4.antialiasing',false)
addLuaSprite('bg4')
end