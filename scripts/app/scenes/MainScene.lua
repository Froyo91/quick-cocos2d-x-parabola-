--quici-cocos2d-x  2.2.5
local MainScene = class("MainScene", function()
	return display.newScene("MainScene")
end)

function MainScene:ctor()
	local a = display.newSprite("a.png", 100, 100)
	self:addChild(a)

	--这里曲线运动是self:quxianMove()，而折线运动是self:zhexianMove()，到时候相应地注释就可以看效果了。
	a:runAction(self:quxianMove())
	--a:runAction(self:zhexianMove())
end

function MainScene:zhexianMove()
	local array = CCPointArray:create(5)
	array:add(ccp(100, 100))
	array:add(ccp(150, 150))
	array:add(ccp(200, 100))
	array:add(ccp(150, 50))
	array:add(ccp(100, 100))

	--CCCatmullRomTo 折线运动
	--参数1：运动时间
	--参数2：运动的轨迹点坐标集合
	local action = CCCatmullRomTo:create(1, array)
	return action
end

function MainScene:quxianMove()
	local array = CCPointArray:create(4)
	array:add(ccp(100, 100))
	array:add(ccp(200, 200))
	array:add(ccp(300, 250))
	array:add(ccp(400, 275))

	--CCCardinalSplineTo 曲线运动
	--参数1：运动时间
	--参数2：运动的轨迹点坐标集合
	--参数3:0表示曲线最柔和
	local action = CCCardinalSplineTo:create(1, array, 0)
	return action
end

function MainScene:onEnter()

end

return MainScene
