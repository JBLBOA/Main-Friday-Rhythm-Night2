function onCreate()
	-- background shit
	makeLuaSprite('City', 'City', -1800, -600);
	setScrollFactor('City', 0.9, 0.9);
	
	makeLuaSprite('Petals Tree', 'Petals Tree', -2300, -700);
	setScrollFactor('Petals Tree', 0.9, 0.9);
	scaleObject('Petals Tree', 1.1, 1.1);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then

		makeLuaSprite('City', 'City', -1800, -600);
		setScrollFactor('City', 0.9, 0.9);
		
		makeLuaSprite('Petals Tree', 'Petals Tree', -2300, -700);
		setScrollFactor('Petals Tree', 0.9, 0.9);
		scaleObject('Petals Tree', 1.1, 1.1);

		makeLuaSprite('Black', 'Black', -670, -50);
		setScrollFactor('Black', 0.9, 0.9);

	end

	addLuaSprite('City', false);
	addLuaSprite('Petals Tree', true);
	addLuaSprite('Black', true);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end