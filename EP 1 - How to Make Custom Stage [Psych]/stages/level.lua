function onCreate()
	--Make Background
	makeLuaSprite('sky','BG/sky',-236,-240)
	makeLuaSprite('floor','BG/floor',-236,-312)
	makeLuaSprite('tree','BG/tree',55,188)
	makeLuaSprite('cloud','BG/cloud',-136,-400)
	makeLuaSprite('house','BG/house',832,-200)

	--Animated Background
	makeAnimatedLuaSprite('bird','BG/bird',947,145)
	addAnimationByPrefix('bird','idle','bird0',24,false)
	
	--Change Size with Width and Height
	setGraphicSize('tree',1171,474)
	setGraphicSize('house',159,113)

	--Change Size
	scaleObject('bird',0.5,0.5);

	--ScrollFactor
	setScrollFactor('house',1,1.5)
	setScrollFactor('cloud',1.5,1)


	--Add Sprite + Adjust Layer

	--Top = Back
	addLuaSprite('sky',false)
	addLuaSprite('house',false)
	addLuaSprite('tree',false)
	addLuaSprite('bird',false)
	addLuaSprite('floor',false)
	addLuaSprite('cloud',true)
	--Below = Front
end

--Play Animation on Beat
function onBeatHit()
	if curBeat % 1 == 0 then
		objectPlayAnimation('bird','idle')
	end
end