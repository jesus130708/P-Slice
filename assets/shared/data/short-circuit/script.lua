function onCreate()
     makeLuaSprite('flashb', '', -200, -200);
        makeGraphic('flashb',5000,5000,'000000')
	      addLuaSprite('flashb', true);
	    setObjectCamera('flashb','other')
	      setProperty('flashb.scale.x',5)
	      setProperty('flashb.scale.y',5)
	      setProperty('flashb.alpha',0)
end
function onEvent(name,value1,value2)
if name == 'Change Character' then
cameraFlash('camOther','000000',1)
end
end
function onStepHit()
if curStep == 416 then
setProperty('school.visible',false)
setProperty('street.visible',false)
setProperty('sky.visible',false)
setProperty('bgtree.visible',false)
setProperty('trees.visible',false)
setProperty('bgg2.visible',true)
setProperty('health', getProperty('health') - 0.5)
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
end
if curStep == 672 then
runHaxeCode([[
var splash = getVar('splashesCam');
splash.filters = [new ShaderFilter(game.getLuaObject('pixel').shader)];
game.camGame.filters = [];
game.camHUD.filters = [];
game.camOther.filters = [];
]])
setProperty('school2.visible',true)
setProperty('street2.visible',true)
setProperty('sky2.visible',true)
setProperty('bgtree2.visible',true)
setProperty('trees2.visible',true)
setProperty('bgg2.visible',false)
setProperty('dadTrail.visible',false)
end
if curStep == 928 then
setProperty('school.visible',false)
setProperty('street.visible',false)
setProperty('sky.visible',false)
setProperty('bgtree.visible',false)
setProperty('trees.visible',false)
setProperty('bgg2.visible',true)
setProperty('health', getProperty('health') - 0.5)
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
end
if curStep == 1184 then
runHaxeCode([[
var splash = getVar('splashesCam');
splash.filters = [new ShaderFilter(game.getLuaObject('pixel').shader)];
game.camGame.filters = [];
game.camHUD.filters = [];
game.camOther.filters = [];
]])
setProperty('school2.visible',true)
setProperty('street2.visible',true)
setProperty('sky2.visible',true)
setProperty('bgtree2.visible',true)
setProperty('trees2.visible',true)
setProperty('bgg2.visible',false)
setProperty('dadTrail2.visible',false)
end
if curStep == 1440 then
doTweenAlpha('flashb','flashb',1,1,'linear')
end
if curStep == 1472 then
doTweenAlpha('flashb','flashb',0,1,'linear')
setProperty('school.visible',false)
setProperty('street.visible',false)
setProperty('sky.visible',false)
setProperty('bgtree.visible',false)
setProperty('trees.visible',false)
setProperty('bgg2.visible',true)
setProperty('health', getProperty('health') - 0.5)
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
end
if curStep == 1728 then
runHaxeCode([[
var splash = getVar('splashesCam');
splash.filters = [new ShaderFilter(game.getLuaObject('pixel').shader)];
game.camGame.filters = [];
game.camHUD.filters = [];
game.camOther.filters = [];
]])
setProperty('school2.visible',true)
setProperty('street2.visible',true)
setProperty('sky2.visible',true)
setProperty('bgtree2.visible',true)
setProperty('trees2.visible',true)
setProperty('bgg2.visible',false)
setProperty('dadTrail3.visible',false)
end
end