function onCreate()
	-- background shit
	makeLuaSprite('BGblue', 'BGblue', -670, -300);
	setScrollFactor('BGblue', 0.6, 0.6);
	
	makeLuaSprite('structure1', 'structure1', -670, -300);
	setScrollFactor('structure1', 0.9, 0.9);
	scaleObject('structure1', 0.6, 0.6);

	makeLuaSprite('structure2', 'structure2', -670, -300);
	setScrollFactor('structure2', 0.9, 0.9);
	scaleObject('structure2', 0.6, 0.6);

	makeLuaSprite('spikes', 'spikes', -700, -370);
	setScrollFactor('spikes', 0.9, 0.9);
	scaleObject('spikes', 0.6, 0.6);

	makeLuaSprite('plataformer', 'plataformer', -700, -370);
	setScrollFactor('plataformer', 0.9, 0.9);
	scaleObject('plataformer', 0.6, 0.6);

	makeLuaSprite('BGblueGD', 'BGblueGD', -670, -300);
	setScrollFactor('BGblueGD', 0.7, 0.7);

	makeLuaSprite('Black', 'Black', -670, -300);
	setScrollFactor('Black', 0.7, 0.7);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then

		makeLuaSprite('BGblue', 'BGblue', -1050, -500);
		setScrollFactor('BGblue', 0.9, 0.9);
		scaleObject('BGblue', 0.6, 0.6);

		makeLuaSprite('structure1', 'structure1', -900, -500);
		setScrollFactor('structure1', 0.9, 0.9);
		scaleObject('structure1', 0.6, 0.6);

		makeLuaSprite('structure2', 'structure2', -1050, -100);
		setScrollFactor('structure2', 0.9, 0.9);
		scaleObject('structure2', 0.6, 0.6);

		makeLuaSprite('spikes', 'spikes', -1050, 570);
		setScrollFactor('spikes', 0.9, 0.9);
		scaleObject('spikes', 0.6, 0.6);

		makeLuaSprite('plataformer', 'plataformer', -450, 200);
		setScrollFactor('plataformer', 0.9, 0.9);
		scaleObject('plataformer', 0.6, 0.6);

		makeLuaSprite('BGblueGD', 'BGblueGD', -670, -300);
		setScrollFactor('BGblueGD', 0.9, 0.9);

		makeLuaSprite('shader1', 'shader1', -1050, -500);
		setScrollFactor('shader1', 0.9, 0.9);
		scaleObject('shader1', 0.6, 0.6);

	end
		
	addLuaSprite('BGblue', false);
	addLuaSprite('shader1', true);
	addLuaSprite('structure1', false);
	addLuaSprite('structure2', false);
	addLuaSprite('spikes', false);
	addLuaSprite('plataformer', false);
	addLuaSprite('BGblueGD', false);
	addLuaSprite('Black', true);

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end