function onEvent(n,v1,v2)
	if n == 'FW' then
	   makeLuaSprite('flash', nil, 0, 0);
        makeGraphic('flash',1280,720,'FFFFFF')
	setObjectCamera('flash', 'hud')
	      addLuaSprite('flash', true);
	      setProperty('flash.scale.x',2)
	      setProperty('flash.scale.y',2)
	      setProperty('flash.alpha',0)
		setProperty('flash.alpha',1)
		doTweenAlpha('flTw','flash',0,v1,'linear')
	end
end