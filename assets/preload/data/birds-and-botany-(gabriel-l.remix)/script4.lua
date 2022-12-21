
function onCreate()
		makeAnimatedLuaSprite('pea', 'icons/animatediconpea', getProperty('iconP2.x'), getProperty('iconP2.y'))
		addAnimationByPrefix('pea', 'peaN', 'pea_n instancia 1',24, true)
		addAnimationByPrefix('pea', 'peaL', 'pea_l instancia 1', 24, true)
		addAnimationByPrefix('pea', 'peaW', 'pea_w instancia 1', 24, true)

		setObjectCamera('pea', 'other') -- either is under the health bar or nothing
		addLuaSprite('pea', false)
                setObjectOrder('pea', 99)
		objectPlayAnimation('pea', 'peaN', false)
		setProperty('pea.alpha', 0)

end

function onUpdate(elapsed)

		setProperty('iconP2.alpha', 0)
		if getProperty('health') > 1.6 then
			objectPlayAnimation('pea', 'peaL', false)
		elseif getProperty('health') < 0.4 then
			objectPlayAnimation('pea', 'peaW', false)
		else
			objectPlayAnimation('pea', 'peaN', false)
	end
	setProperty('camOther.zoom', getProperty('camHUD.zoom'))
	setProperty('pea.x', getProperty('iconP2.x')-50)
	setProperty('pea.angle', getProperty('iconP2.angle'))
	setProperty('pea.y', getProperty('iconP2.y') - 10)
	setProperty('pea.scale.x', getProperty('iconP2.scale.x'))
	setProperty('pea.scale.y', getProperty('iconP2.scale.y'))
end