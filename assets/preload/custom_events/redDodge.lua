--script by letter D

	Image = 'red sword space'-- the image
	Sound_before_hit = 'warning'-- the sound that begin as soon the event starts 
	Sound_after_hit = 'slash_effect'-- the sound that begin after you hit the space bar
	DadAnimation = 'singDOWN'-- dad Animation 
	BfAnimation = 'dodge'-- Bf animation 

	X = 350-- the X for the image
	scale = 1.5-- the image scale
	Y = 100-- the Y for the image

-- if you don't want animation or sounds, just delete it and but nil. (example, 'Dodge', delete the word Dodge and this thing--> '' and put nil and that's it)
function onCreate()
	Dodged = false;
    canDodge = false;
    DodgeTime = 0;
	makeLuaSprite('Do', Image,X,Y)
	setObjectCamera('Do', 'other');
	setProperty('Do.alpha',0)
	setProperty('Do.scale.x', scale)
	setProperty('Do.scale.y', scale)
addLuaSprite('Do',false)


end


function onEvent(name, value1, value2)
    if name == "redDodge" then
		doTweenAlpha('hi', 'Do', 1, 0.000001, 'linear');
		playSound(Sound_before_hit, 1);
    --Get Dodge time
    DodgeTime = (value1);
	--Set values so you can dodge
	canDodge = true;
	runTimer('Died', DodgeTime);
	runTimer('dodo1', 0.8);


	end
end

function onUpdate()

    if canDodge == true then
	if (getMouseX('camHUD') > 1150 and getMouseX('camHUD') < 1280) and (getMouseY('camHUD') > 582.5 and getMouseY('camHUD') < 720 and mousePressed('left')) or keyPressed('space') then
Dodged = true;
        setProperty('health', getProperty('health') + 0.5);
    setProperty('boyfriend.specialAnim', true)
		characterPlayAnim('boyfriend', BfAnimation, true);
	setProperty('Do.scale.x', 1.05)
	setProperty('Do.scale.y', 1.05)
		playSound(Sound_after_hit, 1);
		triggerEvent('Change Character', 'dad', 'red_pibbylmaoDodge')
	doTweenX('dad', 'dad', 0, 0.3, 'linear')
    setProperty('dad.specialAnim', true)
		characterPlayAnim('dad',DadAnimation, true);

	runTimer('back', 0.3);
	runTimer('backc', 0.6);
	runTimer('dodo', 0.1);


canDodge = false;
end
end
end

function onTimerCompleted(tag, loops, loopsLeft)
   if tag == 'Died' and Dodged == false then
        setProperty('health', getProperty('health') - 5);
	doTweenX('dad', 'dad', 600, 0.01, 'quadInOut')
		playSound(Sound_after_hit, 1);
   elseif tag == 'Died' and Dodged == true then

   Dodged = false
   elseif tag == 'dodo' then
	setProperty('Do.scale.x', scale)
	setProperty('Do.scale.y', scale)
   elseif tag == 'dodo1' then
	doTweenAlpha('by', 'Do', 0, 0.3, 'linear');

   elseif tag == 'back' then

	doTweenX('dad', 'dad', -1900, 0.3, 'quadInOut')
   elseif tag == 'backc' then
		triggerEvent('Change Character', 'dad', 'red_pibbylmao')

end
end

