local seenDaEnd = false;
local allowCountdown = false;

function onStartCountdown() -- for dialogue
	if not allowCountdown then
		setProperty('inCutscene', true);
		runTimer('startDialogue', 0.8);
		allowCountdown = true;
		return Function_Stop;
	end
	return Function_Continue;
end

function onCreate()
	addLuaScript('dialogue');
end

function onNextDialogue(count)
	speak(count + 1);
end

function onSkipDialogue(count)
	stopSound('1');
	stopSound('2');
	stopSound('3');
	stopSound('4');
	stopSound('5');
	stopSound('6');
	stopSound('7');
	stopSound('8');
	stopSound('9');
end

function speak(shit)
	stopSound('1');
	stopSound('2');
	stopSound('3');
	stopSound('4');
	stopSound('5');
	stopSound('6');
	stopSound('7');
	stopSound('8');
	stopSound('9');

	playSound('dbText/' .. shit, 1, '1');
	playSound('dbText/' .. shit, 1, '2');
	playSound('dbText/' .. shit, 1, '3');
	playSound('dbText/' .. shit, 1, '4');
	playSound('dbText/' .. shit, 1, '5');
	playSound('dbText/' .. shit, 1, '6');
	playSound('dbText/' .. shit, 1, '7');
	playSound('dbText/' .. shit, 1, '8');
	playSound('dbText/' .. shit, 1, '9');
end

function onEvent(n, v1, v2)
	if n == 'startDia' then
		speak(1);
	end
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'startDialogue' then -- Timer completed, play dialogue
		startDialogue('dialogue', 'Spiritbox');
	end
end