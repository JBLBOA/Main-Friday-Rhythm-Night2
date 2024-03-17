local cameraObject = 'camOther'
function onCreate()
    addHaxeLibrary('FlxSpriteUtil','flixel.util')

    makeLuaSprite('JSABTimeBG',nil,340,20)
    makeGraphic('JSABTimeBG',600,20,'a895c5')
    addLuaSprite('JSABTimeBG')
    setProperty('JSABTimeBG.alpha',0.2)
    setObjectCamera('JSABTimeBG',cameraObject)

    makeLuaSprite('JSABTimeBAR',nil,340,28)
    makeGraphic('JSABTimeBAR',580,5,'3f384a')
    addLuaSprite('JSABTimeBAR')
    setProperty('JSABTimeBAR.alpha',0.47)
    setObjectCamera('JSABTimeBAR',cameraObject)

    makeLuaSprite('JSABCubePoint',nil,920,20)
    makeGraphic('JSABCubePoint',20,20,'00fefe')
    addLuaSprite('JSABCubePoint')
    setProperty('JSABCubePoint.alpha',0)
    setObjectCamera('JSABCubePoint',cameraObject)

    setProperty('JSABTimeBG._frame.frame.width',0)
    setProperty('JSABTimeBAR._frame.frame.width',0)

    runHaxeCode([[
        var triangle = new FlxSprite(923,23);
        triangle.makeGraphic(15, 12, 0x00);
        triangle.cameras = [game.camOther];
        game.add(triangle);
        game.variables.set('trianglePoint',triangle);
        FlxSpriteUtil.drawTriangle(triangle, 0, 0, 15, 0xffffffff);
    ]])

    makeLuaSprite('JSABCube',nil,350,25)
    makeGraphic('JSABCube',10,10,'00fefe')
    addLuaSprite('JSABCube')
    setProperty('JSABCube.alpha',0)
    setObjectCamera('JSABCube',cameraObject)

    setProperty('trianglePoint.y',-20)
    setProperty('trianglePoint.x',345)
end
function onCountdownTick(t)
    if t == 0 then
        doTweenY('introTriangleY','trianglePoint',23,0.5,'backOut')
    end
    if t == 2 then
        doTweenX('introTriangleX','trianglePoint',923,1,'quartInOut')
        runHaxeCode([[
            game.modchartTweens.set('introTimeBG', FlxTween.tween(game.getLuaObject('JSABTimeBG')._frame.frame, {width: 600}, 1, {ease: FlxEase.quartInOut, onComplete: function(){
                game.modchartTweens.remove('introTimeBG');
                game.callOnLuas('onTweenCompleted', ['introTimeBG']);
            }}));
            game.modchartTweens.set('introTimeBar', FlxTween.tween(game.getLuaObject('JSABTimeBAR')._frame.frame, {width: 580}, 1, {ease: FlxEase.quartInOut, onComplete: function(){
                game.modchartTweens.remove('introTimeBar');
                game.callOnLuas('onTweenCompleted', ['introTimeBar']);
            }}));
        ]])
    end
end
function onTweenCompleted(t)
    if t == 'introTimeBG' then
        doTweenAlpha('JSABCubeAlpha','JSABCube',1,0.2)
        doTweenAlpha('JSABCubePointAlpha','JSABCubePoint',0.5,0.2)
        doTweenAlpha('JSABTimeBARAlpha','JSABTimeBAR',0.7,0.2)
        doTweenAlpha('JSABTimeBGAlpha','JSABTimeBG',0.5,0.2)
    end
end
function onCreatePost()
    local objects = {'timeBar','timeBarBG','timeTxt'}
    for i = 1,#objects do
        setProperty(objects[i]..'.visible',false)
    end
end
function onUpdate(elapsed)
    setProperty('JSABCube.offset.x',-round((getProperty('songPercent') * 100), 2) * 5.74)
end
function round(x, n)
    n = math.pow(10, n or 0)
    x = x * n
    if x >= 0 then x = math.floor(x + 0.5) else x = math.ceil(x - 0.5) end
    return x / n
end
