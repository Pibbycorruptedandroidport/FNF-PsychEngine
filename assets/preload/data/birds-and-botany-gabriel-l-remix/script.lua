function onCreatePost()

	makeLuaSprite('Up', 'empty', 0, -170)
	makeGraphic('Up', 1280, 180, '000000')
	setObjectCamera('Up', 'other')
    setObjectOrder('Up', 999)
	addLuaSprite('Up', false)

	makeLuaSprite('Low', 'empty', 0, 880)
	makeGraphic('Low', 1280, 230, '000000')
        setObjectOrder('low', 99)
	setObjectCamera('Low', 'other')

	addLuaSprite('Low', true)


doTweenAlpha('uglyHB', 'uglyHB', 0, 0.0000001, 'linear')
doTweenAlpha('pea', 'pea', 0, 0.0000001, 'linear')
doTweenAlpha('red', 'red', 0, 0.0000001, 'linear')
doTweenAlpha('healthBar', 'healthBar', 0, 0.001, 'linear')
doTweenAlpha('scoreTxt', 'scoreTxt', 0, 0.000001, 'linear')
doTweenAlpha('timeBarBG', 'timeBarBG', 0, 0.000001, 'linear')
doTweenAlpha('timeBar', 'timeBar', 0, 0.00001, 'linear')
doTweenAlpha('animatedbficon', 'animatedbficon', 0, 0.0000001, 'linear')

doTweenAlpha('gardenback', 'gardenback', 0, 0.1, 'linear')
doTweenAlpha('gardenback2', 'gardenback2', 0, 0.1, 'linear')
doTweenAlpha('gardenfront', 'gardenfront', 0, 0.1, 'linear')
doTweenAlpha('gardenfront2', 'gardenfront2', 0, 0.1, 'linear')
doTweenAlpha('gardenanimated', 'gardenanimated', 0, 0.1, 'linear')
doTweenAlpha('gardenanimated2', 'gardenanimated2', 0, 0.1, 'linear')
doTweenAlpha('gardenanimated4', 'gardenanimated4', 0, 0.1, 'linear')
doTweenAlpha('gardenanimated5', 'gardenanimated5', 0, 0.1, 'linear')
doTweenAlpha('gardenanimated3', 'gardenanimated3', 0, 0.1, 'linear')
doTweenAlpha('gardensurvivor', 'gardensurvivor', 0, 0.1, 'linear')
doTweenAlpha('gardensurvivor2', 'gardensurvivor2', 0, 0.1, 'linear')

	makeLuaSprite('b', nil, 0, 0);
	makeGraphic('b', 5000, 3000, '000000');
	setObjectCamera('b', 'hud');
        setObjectOrder('b', 99)
	addLuaSprite('b', true);
end

function onSongStart()

		runTimer('p', 1);
end

function onTimerCompleted(tag)
	if tag == 'p' then
		doTweenAlpha('byBG', 'b', 0, 10, 'linear');
end
end


function onStepHit()
	if curStep == 131 then
doTweenAlpha('gardenback', 'gardenback', 1, 10, 'linear')

doTweenAlpha('gardenback2', 'gardenback2', 1, 10, 'linear')

doTweenAlpha('gardenfront', 'gardenfront', 1, 10, 'linear')
doTweenAlpha('gardenfront2', 'gardenfront2', 1, 10, 'linear')
doTweenAlpha('gardenanimated', 'gardenanimated', 1, 10, 'linear')
doTweenAlpha('gardenanimated2', 'gardenanimated2', 1, 10, 'linear')
doTweenAlpha('gardenanimated4', 'gardenanimated4', 1, 10, 'linear')
doTweenAlpha('gardenanimated5', 'gardenanimated5', 1, 10, 'linear')
doTweenAlpha('gardenanimated3', 'gardenanimated3', 1, 10, 'linear')
doTweenAlpha('gardensurvivor', 'gardensurvivor', 1, 10, 'linear')
doTweenAlpha('gardensurvivor2', 'gardensurvivor2', 1, 10, 'linear')
doTweenAlpha('healthBar', 'healthBar', 1, 10, 'linear')

doTweenAlpha('animatedbficon', 'animatedbficon', 1, 10, 'linear')
doTweenAlpha('uglyHB', 'uglyHB', 1, 10, 'linear')
	elseif curStep == 265 then
		doTweenAlpha('byBG', 'b', 1, 0.000001, 'linear');
doTweenAlpha('uglyHB', 'uglyHB', 0, 0.0000001, 'linear')
doTweenAlpha('healthBar', 'healthBar', 0, 0.001, 'linear')
doTweenAlpha('timeTxt', 'timeTxt', 0, 0.0000001, 'linear')
doTweenAlpha('timeBar', 'timeBar', 0, 0.000001, 'linear')
doTweenAlpha('timeBarBG', 'timeBarBG', 0, 0.0000001, 'linear')
doTweenAlpha('scoreTxt', 'scoreTxt', 0, 0.000001, 'linear')
doTweenAlpha('animatedbficon', 'animatedbficon', 0, 0.0000001, 'linear')
doTweenAlpha('gardenback', 'gardenback', 0, 0.001, 'linear')
doTweenAlpha('gardenback2', 'gardenback2', 0, 0.0000001, 'linear')
doTweenAlpha('gardenfront', 'gardenfront', 0, 0.000001, 'linear')
doTweenAlpha('gardenfront2', 'gardenfront2', 0, 0.000001, 'linear')
doTweenAlpha('gardenanimated', 'gardenanimated', 0, 0.000001, 'linear')
doTweenAlpha('gardenanimated2', 'gardenanimated2', 0, 0.000001, 'linear')
doTweenAlpha('gardenanimated4', 'gardenanimated4', 0, 0.000001, 'linear')
doTweenAlpha('gardenanimated5', 'gardenanimated5', 0, 0.000001, 'linear')
doTweenAlpha('gardenanimated3', 'gardenanimated3', 0, 0.000001, 'linear')
doTweenAlpha('gardensurvivor', 'gardensurvivor', 0, 0.0000001, 'linear')
doTweenAlpha('gardensurvivor2', 'gardensurvivor2', 0, 0.0000001, 'linear')
	elseif curStep == 386 then
		doTweenAlpha('byBG', 'b', 0, 10, 'linear');
doTweenAlpha('uglyHB', 'uglyHB', 1, 8, 'linear')
doTweenAlpha('timeTxt', 'timeTxt', 1, 8, 'linear')
doTweenAlpha('timeBar', 'timeBar', 1, 8, 'linear')
doTweenAlpha('timeBarBG', 'timeBarBG', 1, 8, 'linear')
doTweenAlpha('scoreTxt', 'scoreTxt', 1, 8, 'linear')
doTweenAlpha('gardenback', 'gardenback', 1, 8, 'linear')
doTweenAlpha('gardenback2', 'gardenback2', 1, 8, 'linear')
doTweenAlpha('gardenfront', 'gardenfront', 1, 8, 'linear')
doTweenAlpha('gardenfront2', 'gardenfront2', 1, 8, 'linear')
doTweenAlpha('gardenanimated', 'gardenanimated', 1, 8, 'linear')
doTweenAlpha('gardenanimated2', 'gardenanimated2', 1, 8, 'linear')
doTweenAlpha('gardenanimated4', 'gardenanimated4', 1, 8, 'linear')
doTweenAlpha('gardenanimated5', 'gardenanimated5', 1, 8, 'linear')
doTweenAlpha('gardenanimated3', 'gardenanimated3', 1, 8, 'linear')
doTweenAlpha('gardensurvivor', 'gardensurvivor', 1, 8, 'linear')
doTweenAlpha('gardensurvivor2', 'gardensurvivor2', 1, 8, 'linear')
doTweenAlpha('healthBar', 'healthBar', 1, 8, 'linear')

    doTweenColor('gf', 'gf', '000000', 0.001, 'linear');
    doTweenColor('dad', 'dad', '000000', 0.001, 'linear');
	doTweenY('C1', 'Up', 0, 3, 'Linear')
	doTweenY('C2', 'Low', 550, 3, 'Linear')
	noteTweenY('NOT1', 4, -980, 0.1, 'Linear')
	noteTweenY('NOT2', 5, -980, 0.1, 'Linear')
	noteTweenY('NOT3', 6, -980, 0.1, 'Linear')
	noteTweenY('NOT4', 7, -980, 0.1, 'Linear')
	elseif curStep == 450 then
		cameraFlash('game', '0xFFFFFF', 3, true)

    doTweenColor('gf', 'gf', 'ffffff', 0.1, 'linear');
    doTweenColor('dad', 'dad', 'ffffff', 0.1, 'linear');
	noteTweenY('NOT1', 4, 50, 0.01, 'Linear')
	noteTweenY('NOT2', 5, 50, 0.01, 'Linear')
	noteTweenY('NOT3', 6, 50, 0.01, 'Linear')
	noteTweenY('NOT4', 7, 50, 0.01, 'Linear')
	doTweenY('CC1', 'Up', -920, 0.001, 'Linear')
	doTweenY('CC2', 'Low', 920, 0.001, 'Linear')
	elseif curStep >= 451 then

		setProperty('animatedbficon.alpha', 1)
function onMoveCamera(focus)
function opponentNoteHit(id, direction, noteType, isSustainNote)
    local luckyRoll54 = math.random(1, 50)
    local luckyRoll55 = math.random(1, 50)
    local luckyRoll56 = math.random(1, 0)
    local luckyRoll57 = math.random(1, 0)

        if (luckyRoll54 >= 25) then
            cameraShake('hud', 0.03, 0.03);
    end
        if (luckyRoll55 >= 25) then
            cameraShake('game', 0.03, 0.03);
end
        health = getProperty('health')
        if getProperty('health') > 0.04 then
            setProperty('health', health- 0.015);
        end

	if focus == 'dad' then
		setProperty('red.alpha', 1)
		setProperty('pea.alpha', 0)
end
	if focus == 'boyfriend' then
		setProperty('animatedbficon.alpha', 1)
end
	if noteType == 'GF Sing' or focus == 'gf' then
		setProperty('red.alpha', 0)
		setProperty('pea.alpha', 1)

end
	if curStep >= 1857 then
	if focus == 'boyfriend' then
		setProperty('animatedbficon.alpha', 0)
end
	if focus == 'dad' then
		setProperty('red.alpha', 0)
		setProperty('pea.alpha', 0)
end
	if noteType == 'GF Sing' or focus == 'gf' then
		setProperty('red.alpha', 0)
		setProperty('pea.alpha', 0)
end
        if (luckyRoll56 >= 0) then
            cameraShake('hud', 0.00, 0.00);
    end
        if (luckyRoll57 >= 0) then
            cameraShake('game', 0.00, 0.00);
    end
end
end
end
	if curStep == 1858 then

		doTweenAlpha('byB9G', 'b', 1, 0.001, 'linear');

		setProperty('red.alpha', 0)
		setProperty('pea.alpha', 0)
doTweenAlpha('animatedbficon', 'animatedbficon', 0, 0.0000001, 'linear')
doTweenAlpha('uglyHB', 'uglyHB', 0, 0.0000001, 'linear')

doTweenAlpha('healthBar', 'healthBar', 0, 0.001, 'linear')
doTweenAlpha('timeTxt', 'timeTxt', 0, 0.0000001, 'linear')
doTweenAlpha('timeBar', 'timeBar', 0, 0.000001, 'linear')
doTweenAlpha('timeBarBG', 'timeBarBG', 0, 0.0000001, 'linear')
doTweenAlpha('scoreTxt', 'scoreTxt', 0, 0.000001, 'linear')
doTweenAlpha('gardenback', 'gardenback', 0.5, 0.001, 'linear')
doTweenAlpha('gardenback2', 'gardenback2', 0.5, 0.0000001, 'linear')
doTweenAlpha('gardenfront', 'gardenfront', 0.5, 0.000001, 'linear')
doTweenAlpha('gardenfront2', 'gardenfront2', 0.5, 0.000001, 'linear')
doTweenAlpha('gardenanimated', 'gardenanimated', 0.5, 0.000001, 'linear')
doTweenAlpha('gardenanimated2', 'gardenanimated2', 0.5, 0.000001, 'linear')
doTweenAlpha('gardenanimated4', 'gardenanimated4', 0.5, 0.000001, 'linear')
doTweenAlpha('gardenanimated5', 'gardenanimated5', 0.5, 0.000001, 'linear')
doTweenAlpha('gardenanimated3', 'gardenanimated3', 0.5, 0.000001, 'linear')
doTweenAlpha('gardensurvivor', 'gardensurvivor', 0.5, 0.0000001, 'linear')
doTweenAlpha('gardensurvivor2', 'gardensurvivor2', 0.5, 0.0000001, 'linear')
    doTweenColor('gf', 'gf', '000000', 0.001, 'linear');
    doTweenColor('dad', 'dad', '000000', 0.001, 'linear');
	doTweenY('C1', 'Up', 0, 3, 'Linear')
	doTweenY('C2', 'Low', 550, 3, 'Linear')
	noteTweenY('NOT1', 4, -980, 0.1, 'Linear')
	noteTweenY('NOT2', 5, -980, 0.1, 'Linear')
	noteTweenY('NOT3', 6, -980, 0.1, 'Linear')
	noteTweenY('NOT4', 7, -980, 0.1, 'Linear')
end
	if curStep == 1859 then
		doTweenAlpha('byB99G', 'b', 0, 5, 'linear');
end
	if curStep == 1969 then
		doTweenAlpha('by7B9G', 'b', 1, 0.001, 'linear');
end
end
end