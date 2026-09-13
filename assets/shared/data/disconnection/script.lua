function onEvent(name,value1,value2)
if name == 'Change Character' then
cameraFlash('camGame','000000',1)
end
end
controlhealth = false
heal = 0.03
function goodNoteHit()
if controlhealth then
setProperty('health',heal)
end
end
function noteMiss()
if controlhealth then
heal = heal - 0.02
end
end
function onStepHit()
if curStep == 128 then
setProperty('treesg.visible',true)
setProperty('schoolg.visible',true)
setProperty('streetg.visible',true)
setProperty('bgtreeg.visible',true)
setProperty('skyg.visible',true)
setProperty('trees.visible',false)
setProperty('school.visible',false)
setProperty('street.visible',false)
setProperty('bgtree.visible',false)
setProperty('sky.visible',false)
setProperty('girls.visible',false)
setProperty('lay.visible',true)
end
if curStep == 1056 then
setProperty('treesg2.visible',true)
setProperty('schoolg2.visible',true)
setProperty('streetg2.visible',true)
setProperty('bgtreeg2.visible',true)
setProperty('skyg2.visible',true)
setProperty('treesg.visible',false)
setProperty('schoolg.visible',false)
setProperty('streetg.visible',false)
setProperty('bgtreeg.visible',false)
setProperty('skyg.visible',false)
controlhealth = true
setProperty('health',heal)
end
if curStep == 1344 then
setProperty('treesg.visible',true)
setProperty('schoolg.visible',true)
setProperty('streetg.visible',true)
setProperty('bgtreeg.visible',true)
setProperty('skyg.visible',true)
setProperty('treesg2.visible',false)
setProperty('schoolg2.visible',false)
setProperty('streetg2.visible',false)
setProperty('bgtreeg2.visible',false)
setProperty('skyg2.visible',false)
controlhealth = false
end
end