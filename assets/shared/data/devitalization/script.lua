function onCreate()

makeLuaSprite('black','',-100,-100)
makeGraphic('black',2000,2000,'000000')
setObjectCamera('black','other')
setProperty('black.alpha',0)
addLuaSprite('black')

end
function onUpdatePost()
setObjectCamera('countdownSet','camOther')
setObjectCamera('countdownReady','camOther')
setObjectCamera('countdownGo','camOther')
end
function onCreatePost()
setProperty('gf.visible',false)
end
function onUpdate()
if curStep == 1584 then
setProperty('bfTrail.visible',false)
doTweenAlpha('camHUD','camHUD',0,1,'')
doTweenAlpha('lay2','lay2',1,1,'')
end
if curStep == 1664 then
doTweenAlpha('black','black',1,7,'')
end
end