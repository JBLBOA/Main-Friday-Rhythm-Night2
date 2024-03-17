function onCreate()
	-- background shit
	makeLuaSprite('Fondo', 'Fondo', -100, -500);
	setScrollFactor('Fondo', 0.9, 0.9);
	
	makeLuaSprite('Arboles_Fondo', 'Arboles_Fondo', -100, -300);
	setScrollFactor('Arboles_Fondo', 0.9, 0.9);

	makeLuaSprite('Hojas', 'Hojas', -300, -300);
	setScrollFactor('Hojas', 0.9, 0.9);

	makeLuaSprite('Montaña_Fondo', 'Montaña_Fondo', -100, -300);
	setScrollFactor('Montaña_Fondo', 0.9, 0.9);
	
	makeLuaSprite('Montaña_Medio', 'Montaña_Medio', -300, -300);
	setScrollFactor('Montaña_Medio', 0.9, 0.9);
	scaleObject('Montaña_Medio', 1.1, 1.1);

	makeLuaSprite('Arboles', 'Arboles', -300, -400);
	setScrollFactor('Arboles', 0.9, 0.9);
	scaleObject('Arboles', 1.1, 1.1);

	makeLuaSprite('Montaña_Delante', 'Montaña_Delante', -300, -300);
	setScrollFactor('Montaña_Delante', 0.9, 0.9);
	scaleObject('Montaña_Delante', 1.1, 1.1);

	makeLuaSprite('Agua', 'Agua', -300, -300);
	setScrollFactor('Agua', 0.9, 0.9);
	scaleObject('Agua', 1.1, 1.1);

	makeLuaSprite('stageback3', 'stageback3', -500, -500);
	setScrollFactor('stageback3', 0.9, 0.9);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then

	    makeLuaSprite('Fondo', 'Fondo', -100, -500);
	    setScrollFactor('Fondo', 0.9, 0.9);
	
	    makeLuaSprite('Arboles_Fondo', 'Arboles_Fondo', -100, -300);
	    setScrollFactor('Arboles_Fondo', 0.9, 0.9);

	    makeLuaSprite('Hojas', 'Hojas', -300, -300);
	    setScrollFactor('Hojas', 0.9, 0.9);

	    makeLuaSprite('Montaña_Fondo', 'Montaña_Fondo', -100, -300);
	    setScrollFactor('Montaña_Fondo', 0.9, 0.9);
	
	    makeLuaSprite('Montaña_Medio', 'Montaña_Medio', -300, -300);
	    setScrollFactor('Montaña_Medio', 0.9, 0.9);
	    scaleObject('Montaña_Medio', 1.1, 1.1);

	    makeLuaSprite('Arboles', 'Arboles', -300, -400);
	    setScrollFactor('Arboles', 0.9, 0.9);
	    scaleObject('Arboles', 1.1, 1.1);

	    makeLuaSprite('Montaña_Delante', 'Montaña_Delante', -300, -300);
	    setScrollFactor('Montaña_Delante', 0.9, 0.9);
	    scaleObject('Montaña_Delante', 1.1, 1.1);

	    makeLuaSprite('Agua', 'Agua', -300, -300);
	    setScrollFactor('Agua', 0.9, 0.9);
	    scaleObject('Agua', 1.1, 1.1);

	    makeLuaSprite('stageback3', 'stageback3', -500, -500);
	    setScrollFactor('stageback3', 0.9, 0.9);

	end

	addLuaSprite('Fondo', false);
	addLuaSprite('Arboles_Fondo', false);
	addLuaSprite('Hojas', false);
	addLuaSprite('Montaña_Fondo', false);
	addLuaSprite('Montaña_Medio', false);
	addLuaSprite('Arboles', false);
	addLuaSprite('Montaña_Delante', false);
	addLuaSprite('Agua', false);
	addLuaSprite('stageback3', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end