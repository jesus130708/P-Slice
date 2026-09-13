function onCreate()
makeLuaText("max",0,0,500,350)
setTextSize('max', 33)
setObjectCamera("max", 'hud')
doTweenAlpha('1','max', 0, 0.000000001, 'linear')
addLuaText('max')
end
function onUpdate()
if getProperty('songMisses') ==0 then
max = 20
end
if  getProperty('songMisses') ==1 then
max = 19
end
if  getProperty('songMisses') ==2 then
max = 18
end
if  getProperty('songMisses') ==3 then
max = 17
end
if  getProperty('songMisses') ==4 then
max = 16
end
if getProperty('songMisses') ==5 then
max = 15
end
if  getProperty('songMisses') ==6 then
max = 14
end
if  getProperty('songMisses') ==7 then
max = 13
end
if  getProperty('songMisses') ==8 then
max = 12
end
if  getProperty('songMisses') ==9 then
max = 11
end
if  getProperty('songMisses') ==10 then
max = 10
end
if  getProperty('songMisses') ==11 then
max = 9
end
if  getProperty('songMisses') ==12 then
max = 8
end
if  getProperty('songMisses') ==13 then
max = 7
end
if  getProperty('songMisses') ==14 then
max = 6
end
if getProperty('songMisses') ==15 then
max = 5
end
if  getProperty('songMisses') ==16 then
max = 4
end
if  getProperty('songMisses') ==17 then
max = 3
end
if  getProperty('songMisses') ==18 then
max = 2
end
if  getProperty('songMisses') ==19 then
max = 1
end
if  getProperty('songMisses') ==20 then
max = 0
end
if  getProperty('songMisses') ==21 then
max = -1
end
setTextString('max', 'MAX MISSES:'..max)

if max == -1 then
setProperty('health', -999)
end

if curStep == 1 or curStep == 4 or curStep == 7 or curStep == 10 or curStep == 13 then
doTweenAlpha('2','max', 1, 0.1, 'linear')
end

if curStep == 2 or curStep == 5 or curStep == 8 or curStep == 11 or curStep == 14 then
doTweenAlpha('3','max', 0, 0.1, 'linear')
end

if curStep == 16 or curStep == 19 or curStep == 22 or curStep == 25 or curStep == 28 or curStep == 31 then
doTweenAlpha('3','max', 1, 0.1, 'linear')
setProperty('max.x', 950)
setProperty('max.y', 640)
end

if curStep == 17 or curStep == 20 or curStep == 23 or curStep == 26 or curStep == 29 then
doTweenAlpha('4','max', 0, 0.1, 'linear')
setProperty('max.x', 950)
setProperty('max.y', 640)
end
end