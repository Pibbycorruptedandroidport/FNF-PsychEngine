

function onCreate()

		makeAnimatedLuaSprite('red', 'icons/animatedredicon', getProperty('iconP2.x'), getProperty('iconP2.y'))
		addAnimationByPrefix('red', 'redN', 'red_n instancia 1',24, true)
		addAnimationByPrefix('red', 'redL', 'red_l instancia 1', 24, true)
		addAnimationByPrefix('red', 'redW', 'red_w instancia 1', 24, true)

		setObjectCamera('red', 'other') -- either is under the health bar or nothing
		addLuaSprite('red', false)
                setObjectOrder('red', 99)
		objectPlayAnimation('red', 'redN', false)
		setProperty('red.alpha', 1)

end

function onUpdate(elapsed)

		setProperty('iconP2.alpha', 0)
		if getProperty('health') > 1.6 then
			objectPlayAnimation('red', 'redL', false)
		elseif getProperty('health') < 0.4 then
			objectPlayAnimation('red', 'redW', false)
		else
			objectPlayAnimation('red', 'redN', false)
	end
	setProperty('camOther.zoom', getProperty('camHUD.zoom'))
	setProperty('red.x', getProperty('iconP2.x')-50)
	setProperty('red.angle', getProperty('iconP2.angle'))
	setProperty('red.y', getProperty('iconP2.y') - 10)
	setProperty('red.scale.x', getProperty('iconP2.scale.x'))
	setProperty('red.scale.y', getProperty('iconP2.scale.y'))
end