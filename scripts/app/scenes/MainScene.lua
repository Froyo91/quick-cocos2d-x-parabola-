local MainScene = class("MainScene", function()
	return display.newScene("MainScene")
end)

function MainScene:ctor()
	local a = display.newSprite("a.png", 100, 100)
	self:addChild(a)

	array = CCPointArray:create(3)
	array:add(ccp(100, 100))
	array:add(ccp(350,150))
	array:add(ccp(500, 170))

	local action = CCCardinalSplineTo:create(5, array, 0)
	a:runAction(action)
end

function MainScene:onEnter()
	
end

return MainScene
