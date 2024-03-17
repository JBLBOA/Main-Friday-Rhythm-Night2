function onCreate()
	-- background shit
	makeLuaSprite('black-light', 'black-light', -600, -300);
	setScrollFactor('black-light', 0.9, 0.9);

	addLuaSprite('black-light', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end