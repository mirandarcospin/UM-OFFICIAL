-----------------------------------------------------------------------------------------
--Friends list and finding friends
-- friends.lua
--
-----------------------------------------------------------------------------------------
local widget = require "widget"
local composer = require( "composer" )
local scene = composer.newScene()

function scene:create( event )
	local sceneGroup = self.view

	local title = display.newText( "Friends", display.contentCenterX, 80, native.systemFont, 32 )
	title:setFillColor( 0 )

	local background = display.newImageRect( "background.jpg", display.contentWidth, display.contentHeight)
	background.x = display.contentCenterX
	background.y = display.contentCenterY

	local logo = display.newImageRect( "logo.png", 85, 80)
	logo.x = display.contentCenterX
	logo.y = display.contentHeight-480

	local newTextParams = { text = "Loaded by the first tab's\n\"onPress\" listener\nspecified in the 'tabButtons' table",
						x = display.contentCenterX + 10,
						y = title.y + 215,
						width = 310, height = 310,
						font = native.systemFont, fontSize = 14,
						align = "center" }
	local summary = display.newText( newTextParams )
	summary:setFillColor( 0 ) -- black
-------------------------------------------------------------------------------
display.setStatusBar( display.DefaultStatusBar )

local function onFourthView( event )
	composer.gotoScene( "ride" )
end
local function onSeventhView( event )
	composer.gotoScene( "notifi" )
end

local tabButtons = {
	{ defaultFile="buttonpre.png", overFile="buttonpre.png", width = 120, height = 55, onPress=onFourthView, selected=true},
	{ defaultFile="buttonnext.png", overFile="buttonnext.png", width = 120, height = 55, onPress=onSeventhView},
}

local tabBar = widget.newTabBar{
	top = display.contentHeight - 500,
	buttons = tabButtons
}


-----------------------------------------------------------------------------
	sceneGroup:insert( background )
	sceneGroup:insert( title )
	sceneGroup:insert( summary )
	sceneGroup:insert( tabBar )

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

-----------------------------------------------------------------------------------------

return scene
