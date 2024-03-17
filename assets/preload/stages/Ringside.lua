function onCreate()
	-- background shit
	makeLuaSprite('NewsBG', 'NewsBG', -810, -100);
	setScrollFactor('NewsBG', 0.9, 0.9);
	
	makeLuaSprite('grey', 'grey', -835, 50);
	setScrollFactor('grey', 0.9, 0.9);

	addLuaSprite('NewsBG', false);
	addLuaSprite('gray', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end