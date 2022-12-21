
local pea = {'smol1', 'smol2', 'smol3', 'smol4', 'smol5', 'smol6', 'big1', 'big2', 'big3'}


function onCreate()
precacheImage('PeaSplash');
precacheImage('pea');
	-- credits to: https://gamebanana.com/members/1908754 Unholywanderer04 for this
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'pea_note_but_cool' then --Check if the note on the chart is a Shootems Note
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'pea_note'); --Change texture
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashHue', 0);
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashSat', 0);
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashBrt', -80);

			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false); --Miss has penalties
			end
		end
	end
end

local shootAnims = {"singLEFT", "singDOWN", "singUP", "singRIGHT"}
function goodNoteHit(id, direction, noteType, isSustainNote)
	if noteType == 'pea_note_but_cool' then
		characterPlayAnim('boyfriend', 'dodge', true)
    playSound('peasplash',0.5);
		cameraShake('camGame', 0.1, 0.1)
		runTimer('thrown', 1, 4)

		makeLuaSprite('proyectilepea', 'pea', -1600, 250)
		addLuaSprite('proyectilepea', true)
		doTweenX('watchOut', 'proyectilepea', 4000, 0.5, 'linear')
		characterPlayAnim('gf', shootAnims[direction + 1], false);
		setProperty('dad.specialAnim', true);
end
end

function noteMiss(id, direction, noteType, isSustainNote)
	local Counter = 0
	if noteType == 'pea_note_but_cool'then
--just copy and paste my old code lmao.
		Counter = Counter + 10
		setProperty('health', getProperty('health')- 0.03)
		repeat
			Counter = Counter - 10
			runTimer('attack', 0.01, 70)
			if Counter < 0 then
				Counter = 0
			end
		until Counter == 0
		cameraShake('camGame', 0.2, 0.1)
		makeLuaSprite('proyectilepea', 'pea', -1600, 250)
		addLuaSprite('proyectilepea', true)
		doTweenX('watchOut', 'proyectilepea', 4000, 0.5, 'linear')
		runTimer('thrown', 1, 4)
		characterPlayAnim('boyfriend', 'hurt', true);
    playSound('splat',0.5);
    playSound('peasplash',0.5);
		characterPlayAnim('gf', shootAnims[direction + 1], false);
		setProperty('dad.specialAnim', true);
	    curEffect = math.floor(getRandomInt(1,#pea))

	if pea[curEffect] == 'smol1' then
makeAnimatedLuaSprite('sp1','PeaSplash', 100, 0)
scaleObject('sp1', 0.3, 0.3);
	setObjectCamera('sp1', 'other')
addAnimationByPrefix('sp1','sp1','Splash Screen',24,false)
	objectPlayAnimation('sp1','sp1',false)
	setProperty('sp1.alpha',1)
addLuaSprite('sp1',true)
	  runTimer('spgone1',5)

	elseif pea[curEffect] == 'smol2' then
makeAnimatedLuaSprite('sp2','PeaSplash', 500, 100)
scaleObject('sp2', 0.3, 0.3);
	setObjectCamera('sp2', 'other')
addAnimationByPrefix('sp2','sp2','Splash Screen',24,false)
	objectPlayAnimation('sp2','sp2',false)
	setProperty('sp2.alpha',1)
addLuaSprite('sp2',true)
	  runTimer('spgone2',5)

	elseif pea[curEffect] == 'smol3' then
makeAnimatedLuaSprite('sp3','PeaSplash', 900, 100)
scaleObject('sp3', 0.3, 0.3);
	setObjectCamera('sp3', 'other')
addAnimationByPrefix('sp3','sp3','Splash Screen',24,false)
	objectPlayAnimation('sp3','sp3',false)
	setProperty('sp3.alpha',1)
addLuaSprite('sp3',true)
	  runTimer('spgone3',5)

	elseif pea[curEffect] == 'smol4' then
makeAnimatedLuaSprite('sp4','PeaSplash', 200, 300)
scaleObject('sp4', 0.3, 0.3);
	setObjectCamera('sp4', 'other')
addAnimationByPrefix('sp4','sp4','Splash Screen',24,false)
	objectPlayAnimation('sp4','sp4',false)
	setProperty('sp4.alpha',1)
addLuaSprite('sp4',true)
	  runTimer('spgone4',5)

	elseif pea[curEffect] == 'smol5' then
makeAnimatedLuaSprite('sp5','PeaSplash', 500, 200)
scaleObject('sp5', 0.3, 0.3);
	setObjectCamera('sp5', 'other')
addAnimationByPrefix('sp5','sp5','Splash Screen',24,false)
	objectPlayAnimation('sp5','sp5',false)
	setProperty('sp5.alpha',1)
addLuaSprite('sp5',true)
	  runTimer('spgone5',5)

	elseif pea[curEffect] == 'smol6' then
makeAnimatedLuaSprite('sp6','PeaSplash', -100, 500)
scaleObject('sp6', 0.3, 0.3);
	setObjectCamera('sp6', 'other')
addAnimationByPrefix('sp6','sp6','Splash Screen',24,false)
	objectPlayAnimation('sp6','sp6',false)
	setProperty('sp6.alpha',1)
addLuaSprite('sp6',true)
	  runTimer('spgone6',5)

	elseif pea[curEffect] == 'big1' then
makeAnimatedLuaSprite('bp1','PeaSplash', 500, 100)
scaleObject('bp1', 1, 1);
	setObjectCamera('bp1', 'other')
addAnimationByPrefix('bp1','bp1','Splash Screen',24,false)
	objectPlayAnimation('bp1','bp1',false)
	setProperty('bp1.alpha',1)
addLuaSprite('bp1',true)
	  runTimer('spgone1b',5)

	elseif pea[curEffect] == 'big2' then
makeAnimatedLuaSprite('bp2','PeaSplash', -300, 200)
scaleObject('bp2', 1, 1);
	setObjectCamera('bp2', 'other')
addAnimationByPrefix('bp2','bp2','Splash Screen',24,false)
	objectPlayAnimation('bp2','bp2',false)
	setProperty('bp2.alpha',1)
addLuaSprite('bp2',true)
	  runTimer('spgone2b',5)

	elseif pea[curEffect] == 'big3' then
makeAnimatedLuaSprite('bp3','PeaSplash', 0, 400)
scaleObject('bp3', 1, 1);
	setObjectCamera('bp3', 'other')
addAnimationByPrefix('bp3','bp3','Splash Screen',24,false)
	objectPlayAnimation('bp3','bp3',false)
	setProperty('bp3.alpha',1)
addLuaSprite('bp3',true)
	  runTimer('spgone3b',5)

end

	end
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'thrown' then
		removeLuaSprite('proyectilepea', false)
	elseif tag == 'attack' then
			setProperty('health', getProperty('health')- 0.01)
	elseif tag == 'spgone1' then
		doTweenY('s', 'sp1', 2000, 3, 'linear')
doTweenAlpha('ss', 'sp1', 0, 1, 'linear')
	elseif tag == 'spgone2' then
		doTweenY('s2', 'sp2', 2000, 3, 'linear')
doTweenAlpha('ss2', 'sp2', 0, 1, 'linear')
	elseif tag == 'spgone3' then
		doTweenY('s3', 'sp3', 2000, 3, 'linear')
doTweenAlpha('ss3', 'sp3', 0, 1, 'linear')
	elseif tag == 'spgone4' then
		doTweenY('s4', 'sp4', 2000, 3, 'linear')
doTweenAlpha('ss4', 'sp4', 0, 1, 'linear')
	elseif tag == 'spgone5' then
		doTweenY('s5', 'sp5', 2000, 3, 'linear')
doTweenAlpha('ss5', 'sp5', 0, 1, 'linear')
	elseif tag == 'spgone6' then
		doTweenY('s6', 'sp6', 2000, 3, 'linear')
doTweenAlpha('ss6', 'sp6', 0, 1, 'linear')
	elseif tag == 'spgone1b' then
		doTweenY('b7', 'bp1', 2000, 2, 'linear')
doTweenAlpha('bb7', 'bp1', 0, 1, 'linear')
	elseif tag == 'spgone2b' then
		doTweenY('b8', 'bp2', 2000, 2, 'linear')
doTweenAlpha('bb8', 'bp2', 0, 1, 'linear')
	elseif tag == 'spgone3b' then
		doTweenY('b9', 'bp3', 2000, 2, 'linear')
doTweenAlpha('bb9', 'bp3', 0, 1, 'linear')
	end
end
