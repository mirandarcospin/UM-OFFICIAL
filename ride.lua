-----------------------------------------------------------------------------------------
--Information about getting a ride
-- ride.lua
--Find ride, friends list, notifications, events, and cash
-----------------------------------------------------------------------------------------
local widget = require "widget"
local composer = require( "composer" )
local scene = composer.newScene()
local localGroup = display.newGroup()

function scene:create( event )
	local sceneGroup = self.view

	local logo = display.newImageRect( "logo.png", 85, 80)
	logo.x = display.contentCenterX
	logo.y = display.contentHeight-480

	local title = display.newText( "Ride", display.contentCenterX, 80, native.systemFont, 32 )
	title:setFillColor( 0 )

	local background = display.newImageRect( "background.jpg", display.contentWidth, display.contentHeight)
	background.x = display.contentCenterX
	background.y = display.contentCenterY

--------------------------------------------------------------------------------
---Buttons for: Find ride, friends list, notifications, events, and cash
--------------------------------------------------------------------------------

---Button and scene for finding a ride
display.setStatusBar( display.DefaultStatusBar )
local function onFifthView( event )
	composer.gotoScene( "f-ride" )
end
local ridetabButtons ={
	{defaultFile="buttonride.png", overFile="buttonride.png", width = 150, height = 85, onPress=onFifthView, selected=true},
}
local ridetabBar = widget.newTabBar{
	top = display.contentHeight - 350,
	buttons = ridetabButtons
}

---Button and scene for the friends list
display.setStatusBar( display.DefaultStatusBar )
local function onSixthView( event )
	composer.gotoScene( "friends" )
end

	local friendstabButtons ={
		{defaultFile="buttonfriends.png", overFile="buttonfriends.png", width = 150, height = 85, onPress=onSixthView, selected=true},
	}
	local friendstabBar = widget.newTabBar{
		top = display.contentHeight - 300,
		buttons = friendstabButtons
	}

---Button and scene for the notifications
display.setStatusBar( display.DefaultStatusBar )
local function onSeventhView( event )
	composer.gotoScene( "notifi" )
end
local notitabButtons = {
	{ defaultFile="buttonnotification.png", overFile="buttonnotification.png", width = 150, height = 85, onPress=onSeventhView, selected=true},
}
local notitabBar = widget.newTabBar{
	top = display.contentHeight - 250,
	buttons = notitabButtons
}

---Button and scene for upcoming events in the university
display.setStatusBar( display.DefaultStatusBar )
local function onEighthView( event )
	composer.gotoScene( "event" )
end
local eventtabButtons = {
	{ defaultFile="buttonevent.png", overFile="buttonevent.png", width = 150, height = 85, onPress=onEighthView, selected=true },
}
local eventtabBar = widget.newTabBar{
	top = display.contentHeight - 200,
	buttons = eventtabButtons
}

---Button and scene for the cash system
display.setStatusBar( display.DefaultStatusBar )
local function onNinethView( event )
	composer.gotoScene( "cash" )
end
local cashtabButtons = {
	{ defaultFile="buttoncash.png", overFile="buttoncash.png", width = 150, height = 85, onPress=onNinethView, selected=true },
}
local cashtabBar = widget.newTabBar{
	top = display.contentHeight - 150,
	buttons = cashtabButtons
}

--------------------------------------------------------------------------------
	sceneGroup:insert( background )
	sceneGroup:insert( title )
	sceneGroup:insert( ridetabBar )
	sceneGroup:insert( friendstabBar )
	sceneGroup:insert( notitabBar )
	sceneGroup:insert( eventtabBar )
	sceneGroup:insert( cashtabBar )
end

function scene:create( event )
    local sceneGroup = self.view
end

function scene:show( event )
	local sceneGroup = self.view
	local phase = event.phase

	if phase == "will" then
	elseif phase == "did" then
	end
end

function scene:hide( event )
	local sceneGroup = self.view
	local phase = event.phase

	if event.phase == "will" then
	elseif phase == "did" then
	end
end

function scene:destroy( event )
	local sceneGroup = self.view
end

---------------------------------------------------------------------------------

-- Listener setup
scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )

--------------------------------------------------------------------------------

return scene
