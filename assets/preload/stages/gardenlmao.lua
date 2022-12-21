

function onCreate()
  addCharacterToList('red_pibbylmaododge', 'dad') 
	makeLuaSprite('gardenback', 'garden/gardenback', -3200,-1420);
	setScrollFactor('gardenback', 0.7, 1);
       scaleObject('gardenback', 3.0, 3.0);

	makeLuaSprite('gardenback2', 'garden/gardenback2', -3200,-1520);
	setScrollFactor('gardenback2', 1, 1);
         scaleObject('gardenback2', 3.0, 3.0);

	makeLuaSprite('gardenfront', 'garden/gardenfront', -3200,280);
	setScrollFactor('gardenfront', 1, 1);
       scaleObject('gardenfront', 3.0, 3.0);

	makeLuaSprite('gardenfront2', 'garden/gardenfront2', -2600,530);
	setScrollFactor('gardenfront2', 1, 1);
        scaleObject('gardenfront2', 3.0, 3.0);

       
        makeAnimatedLuaSprite('gardenanimated','garden/gardenanimated',-1200,-400)addAnimationByPrefix('gardenanimated','dance','zombot',25,true)
        objectPlayAnimation('gardenanimated','dance',true)
        setScrollFactor('gardenanimated', 1, 1);
        scaleObject('gardenanimated', 2, 2);
        
        makeAnimatedLuaSprite('gardenanimated2','garden/gardenanimated2',-1800,-200)addAnimationByPrefix('gardenanimated2','dance','torso zombot',25,true)
        objectPlayAnimation('gardenanimated2','dance',true)
        setScrollFactor('gardenanimated2', 1, 1);
        scaleObject('gardenanimated2', 2, 2);

        makeAnimatedLuaSprite('gardenanimated3','garden/gardenanimated3',-1800,-600)addAnimationByPrefix('gardenanimated3','dance','hand_zombot',25,true)
        objectPlayAnimation('gardenanimated3','dance',true)
        setScrollFactor('gardenanimated3', 1, 1);
        scaleObject('gardenanimated3', 2, 2);

        makeAnimatedLuaSprite('gardensurvivor','garden/gf_pibby',190, -100)addAnimationByPrefix('gardensurvivor','dance','gf_pibby',23,true)
        objectPlayAnimation('gardensurvivor','dance',true)
        setScrollFactor('gardensurvivor', 1, 1);

        makeAnimatedLuaSprite('gardensurvivor2','garden/pibby_idle',290, 200)addAnimationByPrefix('gardensurvivor2','dance','pibby_idle',24,true)
        objectPlayAnimation('gardensurvivor2','dance',true)
        setScrollFactor('gardensurvivor2', 1, 1);

        makeAnimatedLuaSprite('gardenanimated5','garden/charactergarden5',-500,-600)addAnimationByPrefix('gardenanimated5','dance','torre',25,true)
        objectPlayAnimation('gardenanimated5','dance',true)
        setScrollFactor('gardenanimated5', 1, 1);
        makeAnimatedLuaSprite('gardenanimated4','garden/charactergarden4',-2900,300)addAnimationByPrefix('gardenanimated4','dance','charactersgardengreen',25,true)
        objectPlayAnimation('gardenanimated4','dance',true)
        setScrollFactor('gardenanimated4', 1, 1);
        scaleObject('gardenanimated5', 2, 2);
        scaleObject('gardenanimated4', 2, 2);

local PermitirParticulas = false

function onCreatePost()
PermitirParticulas = false

spawnParticles();
end

function onUpdate(elapsed)
if PermitirParticulas == true then
	particleThink();

end
end

function onStepHit()
	if curStep == 450 then
PermitirParticulas = true

end
end
function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'particleSpawn' and PermitirParticulas == true then
		particleTimer();
	end

end

-- particle logic
particleCount = 0;
particleLimit = 1000;
particleTime = 10;

function spawnParticles()
	for i = 1, particleLimit do
		tag = ('pixelParticle'..i);
		makeLuaSprite(tag, nil, 100000000000000, 0)
		makeGraphic(tag,1,1, 'FFFFFF')


        addLuaSprite('gardenback', false);
		addLuaSprite(tag, false);
        addLuaSprite('gardenanimated5', false);
        addLuaSprite('gardenanimated2', false);
        addLuaSprite('gardenanimated3', false);
        addLuaSprite('gardenback2', false);
        addLuaSprite('gardenfront', false);
        addLuaSprite('gardenanimated', false);
        addLuaSprite('gardensurvivor', false);
        addLuaSprite('gardensurvivor2', true);
        addLuaSprite('gardenfront2', true);
        addLuaSprite('gardenanimated4', true);

		setBlendMode(tag, 'add');
	end
end
	runTimer('particleSpawn', 0.001, 0);


function particleTimer()
	particleCount = particleCount + 1;
	if particleCount > particleLimit then
		particleCount = 10;
	end
--p stand for particle
	tag = ('pixelParticle'..particleCount);


-- the size of the p for X
	setProperty(tag..'.scale.x', getRandomFloat(5, 5) / 1);
--the size for the p for Y
	setProperty(tag..'.scale.y', getRandomFloat(5, 5) / 1);


--the placement of the p for X
	setProperty(tag..'.x', getRandomFloat(-2000, 1800));
--the placement of the p for Y
	setProperty(tag..'.y', getRandomFloat(900, 900));


--the way the p floating for X
	velX = getRandomFloat(800, -700);
	setProperty(tag..'.velocity.x', velX);
--the way the p floating for Y
	velY = getRandomFloat(-200, -200);
	setProperty(tag..'.velocity.y', velY);


--the visbelty for the p
	setProperty(tag, '.alpha', 1);


	doTweenAlpha(tag..'AlphaTween', tag, 0, particleTime, 'linear');
	doTweenX(tag..'ScaleX', tag..'.scale', 1, particleTime, 'linear');
	doTweenY(tag..'ScaleY', tag..'.scale', 1, particleTime, 'linear');
	doTweenX(tag..'SpeedX', tag..'.velocity', velX * -3, particleTime/3, 'linear');
	doTweenY(tag..'SpeedY', tag..'.velocity', velY * 0, particleTime/0, 'linear');

end
end